/*
  Warnings:

  - The primary key for the `RecordAttachment` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- DropIndex
DROP INDEX "RecordAttachment_sessionUuid_taskUuid_userId_profileName_re_key";

-- AlterTable
ALTER TABLE "RecordAttachment" DROP CONSTRAINT "RecordAttachment_pkey",
ADD CONSTRAINT "RecordAttachment_pkey" PRIMARY KEY ("sessionUuid", "taskUuid", "userId", "profileName", "recordIndex");
