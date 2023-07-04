CREATE OR REPLACE FUNCTION check_update() RETURNS TRIGGER AS $$
BEGIN
  IF NEW."updateAt" < OLD."updateAt" THEN
    RETURN OLD; -- Discard the update
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- profile
DROP TRIGGER IF EXISTS check_update_profile ON "Profile";
CREATE TRIGGER check_update_profile
BEFORE UPDATE ON "Profile"
FOR EACH ROW
EXECUTE PROCEDURE check_update();

-- task
DROP TRIGGER IF EXISTS check_update_task ON "Task";
CREATE TRIGGER check_update_task
BEFORE UPDATE ON "Task"
FOR EACH ROW
EXECUTE PROCEDURE check_update();

-- task asset
DROP TRIGGER IF EXISTS check_update_task_asset ON "TaskAsset";
CREATE TRIGGER check_update_task_asset
BEFORE UPDATE ON "TaskAsset"
FOR EACH ROW
EXECUTE PROCEDURE check_update();

-- channel
DROP TRIGGER IF EXISTS check_update_channel ON "Channel";
CREATE TRIGGER check_update_channel
BEFORE UPDATE ON "Channel"
FOR EACH ROW
EXECUTE PROCEDURE check_update();

-- session
DROP TRIGGER IF EXISTS check_update_session ON "Session";
CREATE TRIGGER check_update_session
BEFORE UPDATE ON "Session"
FOR EACH ROW
EXECUTE PROCEDURE check_update();

-- record
DROP TRIGGER IF EXISTS check_update_record ON "Record";
CREATE TRIGGER check_update_record
BEFORE UPDATE ON "Record"
FOR EACH ROW
EXECUTE PROCEDURE check_update();

-- record attachment
DROP TRIGGER IF EXISTS check_update_record_attachment ON "RecordAttachment";
CREATE TRIGGER check_update_record_attachment
BEFORE UPDATE ON "RecordAttachment"
FOR EACH ROW
EXECUTE PROCEDURE check_update();

-- category
DROP TRIGGER IF EXISTS check_update_category ON "Category";
CREATE TRIGGER check_update_category
BEFORE UPDATE ON "Category"
FOR EACH ROW
EXECUTE PROCEDURE check_update();

-- tag
DROP TRIGGER IF EXISTS check_update_tag ON "Tag";
CREATE TRIGGER check_update_tag
BEFORE UPDATE ON "Tag"
FOR EACH ROW
EXECUTE PROCEDURE check_update();

-- task assignment
DROP TRIGGER IF EXISTS check_update_task_assignment ON "TaskAssignment";
CREATE TRIGGER check_update_task_assignment
BEFORE UPDATE ON "TaskAssignment"
FOR EACH ROW
EXECUTE PROCEDURE check_update();

-- channel subscription
DROP TRIGGER IF EXISTS check_update_channel_subscription ON "ChannelSubscription";
CREATE TRIGGER check_update_channel_subscription
BEFORE UPDATE ON "ChannelSubscription"
FOR EACH ROW
EXECUTE PROCEDURE check_update();

-- schedule
DROP TRIGGER IF EXISTS check_update_schedule ON "Schedule";
CREATE TRIGGER check_update_schedule
BEFORE UPDATE ON "Schedule"
FOR EACH ROW
EXECUTE PROCEDURE check_update();
