-- Create trigger function for cascadingly delete profile dependencies after update
CREATE OR REPLACE FUNCTION cascade_deletion_profile_function() RETURNS TRIGGER AS $$
BEGIN
  -- the record is deleted, cascade delete all records that depend on it
  IF OLD."deleteAt" = -1 AND NEW."deleteAt" != -1 THEN
    -- udpate tasks
    UPDATE "Task"
    SET "deleteAt" = NEW."deleteAt", "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "userId" = NEW."userId"
      AND "profile" = NEW."profile"
      AND "deleteAt" = -1;
    
    -- update channels
    UPDATE "Channel"
    SET "deleteAt" = NEW."deleteAt", "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "userId" = NEW."userId"
      AND "profileName" = NEW."profile"
      AND "deleteAt" = -1;

    -- update records
    UPDATE "Record"
    SET "deleteAt" = NEW."deleteAt", "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "userId" = NEW."userId"
      AND "profileName" = NEW."profile"
      AND "deleteAt" = -1;
    
    -- update categories
    UPDATE "Category"
    SET "deleteAt" = NEW."deleteAt", "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "userId" = NEW."userId"
      AND "profileName" = NEW."profile"
      AND "deleteAt" = -1;

    -- update tags
    UPDATE "Tag"
    SET "deleteAt" = NEW."deleteAt", "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "userId" = NEW."userId"
      AND "profileName" = NEW."profile"
      AND "deleteAt" = -1;

    -- update task assignments
    UPDATE "TaskAssignment"
    SET "deleteAt" = NEW."deleteAt", "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "userId" = NEW."userId"
      AND "profileName" = NEW."profile"
      AND "deleteAt" = -1;
    
    -- update channel subscriptions
    UPDATE "ChannelSubscription"
    SET "deleteAt" = NEW."deleteAt", "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "userId" = NEW."userId"
      AND "profileName" = NEW."profile"
      AND "deleteAt" = -1;

    -- update schedules
    UPDATE "Schedule"
    SET "deleteAt" = NEW."deleteAt", "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "userId" = NEW."userId"
      AND "profileName" = NEW."profile"
      AND "deleteAt" = -1;
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS cascade_deletion_profile_trigger ON "Profile";
CREATE TRIGGER cascade_deletion_profile_trigger
AFTER UPDATE ON "Profile"
FOR EACH ROW
EXECUTE FUNCTION cascade_deletion_profile_function();

-- Create trigger function for checking profile dependencies
CREATE OR REPLACE FUNCTION check_dependencies_profile_function() RETURNS TRIGGER AS $$
BEGIN
  IF NEW."deleteAt" = -1 THEN
    -- do nothing
    RETURN NULL;
  ELSE
    -- do nothing
    RETURN NULL;
  END IF;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS check_dependencies_profile_trigger ON "Profile";
CREATE TRIGGER check_dependencies_profile_trigger
AFTER INSERT ON "Profile"
FOR EACH ROW
EXECUTE FUNCTION check_dependencies_profile_function();

-- Create trigger function for cascadingly delete task dependencies after update
CREATE OR REPLACE FUNCTION cascade_deletion_task_function() RETURNS TRIGGER AS $$
BEGIN
  -- the record is deleted, cascade delete all records that depend on it
  IF OLD."deleteAt" = -1 AND NEW."deleteAt" != -1 THEN
    -- update task assets
    UPDATE "TaskAsset"
    SET "deleteAt" = NEW."deleteAt", "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "taskUuid" = NEW."uuid"
      AND "deleteAt" = -1;
    
    -- update task assignments
    UPDATE "TaskAssignment"
    SET "deleteAt" = NEW."deleteAt", "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "taskUuid" = NEW."uuid"
      AND "deleteAt" = -1;
    
    -- update task sessions
    UPDATE "Session"
    SET "deleteAt" = NEW."deleteAt", "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "taskUuid" = NEW."uuid"
      AND "deleteAt" = -1;
    
    -- update records
    UPDATE "Record"
    SET "deleteAt" = NEW."deleteAt", "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "taskUuid" = NEW."uuid"
      AND "deleteAt" = -1;
    
    -- update task
    UPDATE "Task"
    SET "deleteAt" = NEW."deleteAt", "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "parentUuid" = NEW."uuid"
      AND "deleteAt" = -1;
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS cascade_deletion_task_trigger ON "Task";
CREATE TRIGGER cascade_deletion_task_trigger
AFTER UPDATE ON "Task"
FOR EACH ROW
EXECUTE FUNCTION cascade_deletion_task_function();

-- Create trigger function for checking task dependencies
CREATE OR REPLACE FUNCTION check_dependencies_task_function() RETURNS TRIGGER AS $$
BEGIN
  IF NEW."deleteAt" = -1 THEN
    -- check if the parent task exists and not deleted
    IF NEW."parentUuid" IS NOT NULL THEN
      IF NOT EXISTS (SELECT 1 FROM "Task" WHERE "uuid" = NEW."parentUuid" AND "deleteAt" = -1) THEN
        -- mark current task as deleted
        UPDATE "Task" SET "deleteAt" = (extract(epoch from now()) * 1000) WHERE "uuid" = NEW."uuid";
      END IF;
    END IF;

    -- check if the parent channel exists and not deleted
    IF NEW."channelUuid" IS NOT NULL THEN
      IF NOT EXISTS (SELECT 1 FROM "Channel" WHERE "uuid" = NEW."channelUuid" AND "deleteAt" = -1) THEN
        -- remove the channel
        UPDATE "Task" SET "channelUuid" = NULL WHERE "uuid" = NEW."uuid";
      END IF;
    END IF;

    -- check if the parent profile exists and not deleted
    IF NOT EXISTS (SELECT 1 FROM "Profile" WHERE "userId" = NEW."userId" AND "name" = NEW."profile" AND "deleteAt" = -1) THEN
      -- mark current task as deleted
      UPDATE "Task" SET "deleteAt" = (extract(epoch from now()) * 1000) WHERE "uuid" = NEW."uuid";
    END IF;
  ELSE
    -- do nothing
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS check_dependencies_task_trigger ON "Task";
CREATE TRIGGER check_dependencies_task_trigger
AFTER INSERT ON "Task"
FOR EACH ROW
EXECUTE FUNCTION check_dependencies_task_function();

-- Create trigger function for checking task asset dependencies
CREATE OR REPLACE FUNCTION check_dependencies_task_asset_function() RETURNS TRIGGER AS $$
BEGIN
  IF NEW."deleteAt" = -1 THEN
    -- check if the parent task exists and not deleted
    IF NOT EXISTS (SELECT 1 FROM "Task" WHERE "uuid" = NEW."taskUuid" AND "deleteAt" = -1) THEN
      -- mark current task asset as deleted
      UPDATE "TaskAsset"
      SET "deleteAt" = (extract(epoch from now()) * 1000)
      WHERE "name" = NEW."name"
        AND "hash" = NEW."hash";
    END IF;
  ELSE
    -- do nothing
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS check_dependencies_task_asset_trigger ON "TaskAsset";
CREATE TRIGGER check_dependencies_task_asset_trigger
AFTER INSERT ON "TaskAsset"
FOR EACH ROW
EXECUTE FUNCTION check_dependencies_task_asset_function();

-- Create trigger function for cascadingly delete channel dependencies after update
CREATE OR REPLACE FUNCTION cascade_deletion_channel_function() RETURNS TRIGGER AS $$
BEGIN
  -- the record is deleted, cascade delete all records that depend on it
  IF OLD."deleteAt" = -1 AND NEW."deleteAt" != -1 THEN
    -- update tasks
    UPDATE "Task"
    SET "channelUuid" = NULL, "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "channelUuid" = NEW."uuid"
      AND "deleteAt" = -1;
    
    -- update subscriptions
    UPDATE "ChannelSubscription"
    SET "deleteAt" = NEW."deleteAt", "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "channelUuid" = NEW."uuid"
      AND "deleteAt" = -1;
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS cascade_deletion_channel_trigger ON "Channel";
CREATE TRIGGER cascade_deletion_channel_trigger
AFTER UPDATE ON "Channel"
FOR EACH ROW
EXECUTE FUNCTION cascade_deletion_channel_function();

-- Create trigger function for checking channel dependencies
CREATE OR REPLACE FUNCTION check_dependencies_channel_function() RETURNS TRIGGER AS $$
BEGIN
  IF NEW."deleteAt" = -1 THEN
    -- check if the parent profile exists and not deleted
    IF NOT EXISTS (SELECT 1 FROM "Profile" WHERE "userId" = NEW."userId" AND "name" = NEW."profileName" AND "deleteAt" = -1) THEN
      -- mark current channel as deleted
      UPDATE "Channel" SET "deleteAt" = (extract(epoch from now()) * 1000) WHERE "uuid" = NEW."uuid";
    END IF;
  ELSE
    -- do nothing
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS check_dependencies_channel_trigger ON "Channel";
CREATE TRIGGER check_dependencies_channel_trigger
AFTER INSERT ON "Channel"
FOR EACH ROW
EXECUTE FUNCTION check_dependencies_channel_function();

-- Create trigger function for cascadingly delete session dependencies after update
CREATE OR REPLACE FUNCTION cascade_deletion_session_function() RETURNS TRIGGER AS $$
BEGIN
  -- the record is deleted, cascade delete all records that depend on it
  IF OLD."deleteAt" = -1 AND NEW."deleteAt" != -1 THEN
    -- update records
    UPDATE "Record"
    SET "deleteAt" = NEW."deleteAt", "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "sessionUuid" = NEW."uuid"
      AND "deleteAt" = -1;

    -- update schedules
    UPDATE "Schedule"
    SET "deleteAt" = NEW."deleteAt", "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "sessionUuid" = NEW."uuid"
      AND "deleteAt" = -1;
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS cascade_deletion_session_trigger ON "Session";
CREATE TRIGGER cascade_deletion_session_trigger
AFTER UPDATE ON "Session"
FOR EACH ROW
EXECUTE FUNCTION cascade_deletion_session_function();

-- Create trigger function for checking session dependencies
CREATE OR REPLACE FUNCTION check_dependencies_session_function() RETURNS TRIGGER AS $$
BEGIN
  IF NEW."deleteAt" = -1 THEN
    -- check if the parent task exists and not deleted
    IF NOT EXISTS (SELECT 1 FROM "Task" WHERE "uuid" = NEW."taskUuid" AND "deleteAt" = -1) THEN
      -- mark current session as deleted
      UPDATE "Session" SET "deleteAt" = (extract(epoch from now()) * 1000) WHERE "uuid" = NEW."uuid";
    END IF;
  ELSE
    -- do nothing
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS check_dependencies_session_trigger ON "Session";
CREATE TRIGGER check_dependencies_session_trigger
AFTER INSERT ON "Session"
FOR EACH ROW
EXECUTE FUNCTION check_dependencies_session_function();

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
      AND "recordIndex" = NEW."index"
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
        AND "index" = NEW."index";
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
        AND "index" = NEW."index";
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
        AND "index" = NEW."index";
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
        AND "index" = NEW."recordIndex"
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

-- Create trigger function for cascadingly delete category dependencies after update
CREATE OR REPLACE FUNCTION cascade_deletion_category_function() RETURNS TRIGGER AS $$
BEGIN
  -- the record is deleted, cascade delete all records that depend on it
  IF OLD."deleteAt" = -1 AND NEW."deleteAt" != -1 THEN
    -- update task assignments
    UPDATE "TaskAssignment"
    SET "deleteAt" = NEW."deleteAt", "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "userId" = NEW."userId"
      AND "profileName" = NEW."profileName"
      AND "categoryName" = NEW."name"
      AND "deleteAt" = -1;
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS cascade_deletion_category_trigger ON "Category";
CREATE TRIGGER cascade_deletion_category_trigger
AFTER UPDATE ON "Category"
FOR EACH ROW
EXECUTE FUNCTION cascade_deletion_category_function();

-- Create trigger function for checking category dependencies
CREATE OR REPLACE FUNCTION check_dependencies_category_function() RETURNS TRIGGER AS $$
BEGIN
  IF NEW."deleteAt" = -1 THEN
    -- check if the parent profile exists and not deleted
    IF NOT EXISTS (SELECT 1 FROM "Profile" WHERE "userId" = NEW."userId" AND "name" = NEW."profileName" AND "deleteAt" = -1) THEN
      -- mark current category as deleted
      UPDATE "Category"
      SET "deleteAt" = (extract(epoch from now()) * 1000)
      WHERE "userId" = NEW."userId"
        AND "profileName" = NEW."profileName"
        AND "name" = NEW."name";
      RETURN NULL;
    END IF;
  ELSE
    -- do nothing
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS check_dependencies_category_trigger ON "Category";
CREATE TRIGGER check_dependencies_category_trigger
AFTER INSERT ON "Category"
FOR EACH ROW
EXECUTE FUNCTION check_dependencies_category_function();

-- Create trigger function for cascadingly delete tag dependencies after update
CREATE OR REPLACE FUNCTION cascade_deletion_tag_function() RETURNS TRIGGER AS $$
BEGIN
  -- the record is deleted, cascade delete all records that depend on it
  IF OLD."deleteAt" = -1 AND NEW."deleteAt" != -1 THEN
    -- update syncAt of task assignments
    UPDATE "TaskAssignment"
    SET "syncAt" = GREATEST(NEW."syncAt", extract(epoch from now()) * 1000)
    WHERE "taskUuid" IN (
      SELECT "taskUuid"
      FROM "TaskAssignmentTags"
      WHERE "userId" = NEW."userId"
        AND "profileName" = NEW."profileName"
        AND "tagName" = NEW."name"
    );

    -- delete relations between task assignments and tags
    DELETE FROM "TaskAssignmentTags"
    WHERE "userId" = NEW."userId"
      AND "profileName" = NEW."profileName"
      AND "tagName" = NEW."name";
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS cascade_deletion_tag_trigger ON "Tag";
CREATE TRIGGER cascade_deletion_tag_trigger
AFTER UPDATE ON "Tag"
FOR EACH ROW
EXECUTE FUNCTION cascade_deletion_tag_function();

-- Create trigger function for checking tag dependencies
CREATE OR REPLACE FUNCTION check_dependencies_tag_function() RETURNS TRIGGER AS $$
BEGIN
  IF NEW."deleteAt" = -1 THEN
    -- check if the parent profile exists and not deleted
    IF NOT EXISTS (SELECT 1 FROM "Profile" WHERE "userId" = NEW."userId" AND "name" = NEW."profileName" AND "deleteAt" = -1) THEN
      -- mark current tag as deleted
      UPDATE "Tag"
      SET "deleteAt" = (extract(epoch from now()) * 1000)
      WHERE "userId" = NEW."userId"
        AND "profileName" = NEW."profileName"
        AND "name" = NEW."name";
      RETURN NULL;
    END IF;
  ELSE
    -- do nothing
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS check_dependencies_tag_trigger ON "Tag";
CREATE TRIGGER check_dependencies_tag_trigger
AFTER INSERT ON "Tag"
FOR EACH ROW
EXECUTE FUNCTION check_dependencies_tag_function();

-- Create trigger function for checking task assignment dependencies
CREATE OR REPLACE FUNCTION check_dependencies_task_assignment_function() RETURNS TRIGGER AS $$
BEGIN
  IF NEW."deleteAt" = -1 THEN
    -- check if any related tags are deleted
    -- remove deleted tags from task assignment
    DELETE FROM "TaskAssignmentTags"
    WHERE "userId" = NEW."userId"
      AND "profileName" = NEW."profileName"
      AND "taskUuid" = NEW."taskUuid"
      AND "tagName" IN (
        SELECT "name"
        FROM "Tag"
        WHERE "userId" = NEW."userId"
          AND "profileName" = NEW."profileName"
          AND "deleteAt" != -1
      );

    -- check if the parent profile exists and not deleted
    IF NOT EXISTS (SELECT 1 FROM "Profile" WHERE "userId" = NEW."userId" AND "name" = NEW."profileName" AND "deleteAt" = -1) THEN
      -- mark current task assignment as deleted
      UPDATE "TaskAssignment"
      SET "deleteAt" = (extract(epoch from now()) * 1000)
      WHERE "userId" = NEW."userId"
        AND "profileName" = NEW."profileName"
        AND "taskUuid" = NEW."taskUuid";
      RETURN NULL;
    END IF;

    -- check if the parent task exists and not deleted
    IF NOT EXISTS (SELECT 1 FROM "Task" WHERE "uuid" = NEW."taskUuid" AND "deleteAt" = -1) THEN
      -- mark current task assignment as deleted
      UPDATE "TaskAssignment"
      SET "deleteAt" = (extract(epoch from now()) * 1000)
      WHERE "userId" = NEW."userId"
        AND "profileName" = NEW."profileName"
        AND "taskUuid" = NEW."taskUuid";
      RETURN NULL;
    END IF;

    -- check if the parent category exists and not deleted
    IF NOT EXISTS (SELECT 1 FROM "Category" WHERE "userId" = NEW."userId" AND "profileName" = NEW."profileName" AND "name" = NEW."categoryName" AND "deleteAt" = -1) THEN
      -- mark current task assignment as deleted
      UPDATE "TaskAssignment"
      SET "deleteAt" = (extract(epoch from now()) * 1000)
      WHERE "userId" = NEW."userId"
        AND "profileName" = NEW."profileName"
        AND "taskUuid" = NEW."taskUuid";
      RETURN NULL;
    END IF;
  ELSE
    -- do nothing
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS check_dependencies_task_assignment_trigger ON "TaskAssignment";
CREATE TRIGGER check_dependencies_task_assignment_trigger
AFTER INSERT ON "TaskAssignment"
FOR EACH ROW
EXECUTE FUNCTION check_dependencies_task_assignment_function();

-- Create trigger function for checking channel subscription dependencies
CREATE OR REPLACE FUNCTION check_dependencies_channel_subscription_function() RETURNS TRIGGER AS $$
BEGIN
  IF NEW."deleteAt" = -1 THEN
    -- check if the parent profile exists and not deleted
    IF NOT EXISTS (SELECT 1 FROM "Profile" WHERE "userId" = NEW."userId" AND "name" = NEW."profileName" AND "deleteAt" = -1) THEN
      -- mark current channel subscription as deleted
      UPDATE "ChannelSubscription"
      SET "deleteAt" = (extract(epoch from now()) * 1000)
      WHERE "userId" = NEW."userId"
        AND "profileName" = NEW."profileName"
        AND "channelUuid" = NEW."channelUuid";
      RETURN NULL;
    END IF;

    -- check if the parent channel exists and not deleted
    IF NOT EXISTS (SELECT 1 FROM "Channel" WHERE "uuid" = NEW."channelUuid" AND "deleteAt" = -1) THEN
      -- mark current channel subscription as deleted
      UPDATE "ChannelSubscription"
      SET "deleteAt" = (extract(epoch from now()) * 1000)
      WHERE "userId" = NEW."userId"
        AND "profileName" = NEW."profileName"
        AND "channelUuid" = NEW."channelUuid";
      RETURN NULL;
    END IF;
  ELSE
    -- do nothing
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS check_dependencies_channel_subscription_trigger ON "ChannelSubscription";
CREATE TRIGGER check_dependencies_channel_subscription_trigger
AFTER INSERT ON "ChannelSubscription"
FOR EACH ROW
EXECUTE FUNCTION check_dependencies_channel_subscription_function();

-- Create trigger function for checking schedule dependencies
CREATE OR REPLACE FUNCTION check_dependencies_schedule_function() RETURNS TRIGGER AS $$
BEGIN
  IF NEW."deleteAt" = -1 THEN
    -- check if the parent profile exists and not deleted
    IF NOT EXISTS (SELECT 1 FROM "Profile" WHERE "userId" = NEW."userId" AND "name" = NEW."profileName" AND "deleteAt" = -1) THEN
      -- mark current schedule as deleted
      UPDATE "Schedule"
      SET "deleteAt" = (extract(epoch from now()) * 1000)
      WHERE "userId" = NEW."userId"
        AND "profileName" = NEW."profileName"
        AND "sessionUuid" = NEW."sessionUuid";
      RETURN NULL;
    END IF;

    -- check if the parent session exists and not deleted
    IF NOT EXISTS (SELECT 1 FROM "Session" WHERE "uuid" = NEW."sessionUuid" AND "deleteAt" = -1) THEN
      -- mark current schedule as deleted
      UPDATE "Schedule"
      SET "deleteAt" = (extract(epoch from now()) * 1000)
      WHERE "userId" = NEW."userId"
        AND "profileName" = NEW."profileName"
        AND "sessionUuid" = NEW."sessionUuid";
      RETURN NULL;
    END IF;
  ELSE
    -- do nothing
  END IF;
  RETURN NULL;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS check_dependencies_schedule_trigger ON "Schedule";
CREATE TRIGGER check_dependencies_schedule_trigger
AFTER INSERT ON "Schedule"
FOR EACH ROW
EXECUTE FUNCTION check_dependencies_schedule_function();
