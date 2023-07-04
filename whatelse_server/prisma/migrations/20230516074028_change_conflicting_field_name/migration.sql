/*
  Warnings:

  - The primary key for the `Record` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `index` on the `Record` table. All the data in the column will be lost.
  - Added the required column `recordIndex` to the `Record` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "RecordAttachment" DROP CONSTRAINT "RecordAttachment_sessionUuid_taskUuid_userId_profileName_r_fkey";

-- AlterTable
ALTER TABLE "Record" DROP CONSTRAINT "Record_pkey",
DROP COLUMN "index",
ADD COLUMN     "recordIndex" INTEGER NOT NULL,
ADD CONSTRAINT "Record_pkey" PRIMARY KEY ("sessionUuid", "taskUuid", "userId", "profileName", "recordIndex");

-- AddForeignKey
ALTER TABLE "RecordAttachment" ADD CONSTRAINT "RecordAttachment_sessionUuid_taskUuid_userId_profileName_r_fkey" FOREIGN KEY ("sessionUuid", "taskUuid", "userId", "profileName", "recordIndex") REFERENCES "Record"("sessionUuid", "taskUuid", "userId", "profileName", "recordIndex") ON DELETE CASCADE ON UPDATE CASCADE;

-- Create trigger function for cascadingly delete record dependencies after update
CREATE OR REPLACE FUNCTION cascade_deletion_record_function() RETURNS TRIGGER AS $$
BEGIN
  -- the record is deleted, cascade delete all records that depend on it
  IF OLD."deleteAt" = -1 AND NEW."deleteAt" != -1 THEN
    -- update record assets
    UPDATE "RecordAttachment"
    SET "deleteAt" = NEW."deleteAt", "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "sessionUuid" = NEW."sessionUuid"
      AND "taskUuid" = NEW."taskUuid"
      AND "userId" = NEW."userId"
      AND "profileName" = NEW."profileName"
      AND "recordIndex" = NEW."recordIndex"
      AND "deleteAt" = -1;
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS cascade_deletion_record_trigger ON "Record";
CREATE TRIGGER cascade_deletion_record_trigger
AFTER UPDATE ON "Record"
FOR EACH ROW
EXECUTE FUNCTION cascade_deletion_record_function();

-- Create trigger function for checking record dependencies
CREATE OR REPLACE FUNCTION check_dependencies_record_function() RETURNS TRIGGER AS $$
BEGIN
  IF NEW."deleteAt" = -1 THEN
    -- check if the parent session exists and not deleted
    IF NOT EXISTS (SELECT 1 FROM "Session" WHERE "uuid" = NEW."sessionUuid" AND "deleteAt" = -1) THEN
      -- mark current record as deleted
      UPDATE "Record"
      SET "deleteAt" = (extract(epoch from now()) * 1000)
      WHERE "sessionUuid" = NEW."sessionUuid"
        AND "taskUuid" = NEW."taskUuid"
        AND "userId" = NEW."userId"
        AND "profileName" = NEW."profileName"
        AND "recordIndex" = NEW."recordIndex";
      RETURN NULL;
    END IF;

    -- check if the parent task exists and not deleted
    IF NOT EXISTS (SELECT 1 FROM "Task" WHERE "uuid" = NEW."taskUuid" AND "deleteAt" = -1) THEN
      -- mark current record as deleted
      UPDATE "Record"
      SET "deleteAt" = (extract(epoch from now()) * 1000)
      WHERE "sessionUuid" = NEW."sessionUuid"
        AND "taskUuid" = NEW."taskUuid"
        AND "userId" = NEW."userId"
        AND "profileName" = NEW."profileName"
        AND "recordIndex" = NEW."recordIndex";
      RETURN NULL;
    END IF;

    -- check if the parent profile exists and not deleted
    IF NOT EXISTS (SELECT 1 FROM "Profile" WHERE "userId" = NEW."userId" AND "name" = NEW."profileName" AND "deleteAt" = -1) THEN
      -- mark current record as deleted
      UPDATE "Record"
      SET "deleteAt" = (extract(epoch from now()) * 1000)
      WHERE "sessionUuid" = NEW."sessionUuid"
        AND "taskUuid" = NEW."taskUuid"
        AND "userId" = NEW."userId"
        AND "profileName" = NEW."profileName"
        AND "recordIndex" = NEW."recordIndex";
      RETURN NULL;
    END IF;
  ELSE
    -- do nothing
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS check_dependencies_record_trigger ON "Record";
CREATE TRIGGER check_dependencies_record_trigger
AFTER INSERT ON "Record"
FOR EACH ROW
EXECUTE FUNCTION check_dependencies_record_function();

-- Create trigger function for checking record attachment dependencies
CREATE OR REPLACE FUNCTION check_dependencies_record_attachment_function() RETURNS TRIGGER AS $$
BEGIN
  IF NEW."deleteAt" = -1 THEN
    -- check if the parent record exists and not deleted
    IF NOT EXISTS (
      SELECT 1
      FROM "Record"
      WHERE "sessionUuid" = NEW."sessionUuid"
        AND "taskUuid" = NEW."taskUuid"
        AND "userId" = NEW."userId"
        AND "profileName" = NEW."profileName"
        AND "recordIndex" = NEW."recordIndex"
        AND "deleteAt" = -1
    ) THEN
      -- mark current record attachment as deleted
      UPDATE "RecordAttachment"
      SET "deleteAt" = (extract(epoch from now()) * 1000)
      WHERE "sessionUuid" = NEW."sessionUuid"
        AND "taskUuid" = NEW."taskUuid"
        AND "userId" = NEW."userId"
        AND "profileName" = NEW."profileName"
        AND "recordIndex" = NEW."recordIndex";
      RETURN NULL;
    END IF;
  ELSE
    -- do nothing
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS check_dependencies_record_attachment_trigger ON "RecordAttachment";
CREATE TRIGGER check_dependencies_record_attachment_trigger
AFTER INSERT ON "RecordAttachment"
FOR EACH ROW
EXECUTE FUNCTION check_dependencies_record_attachment_function();
