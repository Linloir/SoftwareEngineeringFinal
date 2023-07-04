-- CreateEnum
CREATE TYPE "TaskAssignmentStatus" AS ENUM ('ACCEPTED', 'REJECTED');

-- CreateEnum
CREATE TYPE "TaskPriority" AS ENUM ('NONE', 'LOW', 'MEDIUM', 'HIGH', 'URGENT');

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT,
    "phone" TEXT,
    "password" TEXT NOT NULL,
    "avatarRef" TEXT,
    "unionId" TEXT,
    "tencentId" TEXT,
    "appleId" TEXT,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Profile" (
    "name" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "icon" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    "updateAt" BIGINT NOT NULL,
    "syncAt" BIGINT NOT NULL,
    "deleteAt" BIGINT NOT NULL DEFAULT -1,

    CONSTRAINT "Profile_pkey" PRIMARY KEY ("userId","name")
);

-- CreateTable
CREATE TABLE "Task" (
    "uuid" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "desc" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "location" TEXT,
    "requireLocation" BOOLEAN NOT NULL,
    "requireTime" BOOLEAN NOT NULL,
    "requireAttachment" BOOLEAN NOT NULL,
    "userId" INTEGER NOT NULL,
    "profile" TEXT NOT NULL,
    "parentUuid" TEXT,
    "updateAt" BIGINT NOT NULL,
    "syncAt" BIGINT NOT NULL,
    "deleteAt" BIGINT NOT NULL DEFAULT -1,

    CONSTRAINT "Task_pkey" PRIMARY KEY ("uuid")
);

-- CreateTable
CREATE TABLE "TaskAsset" (
    "name" TEXT NOT NULL,
    "hash" TEXT NOT NULL,
    "assetRef" TEXT NOT NULL,
    "taskUuid" TEXT NOT NULL,
    "updateAt" BIGINT NOT NULL,
    "syncAt" BIGINT NOT NULL,
    "deleteAt" BIGINT NOT NULL DEFAULT -1,

    CONSTRAINT "TaskAsset_pkey" PRIMARY KEY ("taskUuid","hash")
);

-- CreateTable
CREATE TABLE "Channel" (
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "desc" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "imgRef" TEXT,
    "userId" INTEGER NOT NULL,
    "profileName" TEXT NOT NULL,
    "updateAt" BIGINT NOT NULL,
    "syncAt" BIGINT NOT NULL,
    "deleteAt" BIGINT NOT NULL DEFAULT -1,

    CONSTRAINT "Channel_pkey" PRIMARY KEY ("uuid")
);

-- CreateTable
CREATE TABLE "Session" (
    "uuid" TEXT NOT NULL,
    "start" BIGINT NOT NULL,
    "end" BIGINT NOT NULL,
    "cycle" BIGINT NOT NULL,
    "taskUuid" TEXT NOT NULL,
    "updateAt" BIGINT NOT NULL,
    "syncAt" BIGINT NOT NULL,
    "deleteAt" BIGINT NOT NULL,

    CONSTRAINT "Session_pkey" PRIMARY KEY ("uuid")
);

-- CreateTable
CREATE TABLE "Record" (
    "time" BIGINT NOT NULL,
    "index" INTEGER NOT NULL,
    "sessionUuid" TEXT NOT NULL,
    "taskUuid" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    "profileName" TEXT NOT NULL,
    "updateAt" BIGINT NOT NULL,
    "syncAt" BIGINT NOT NULL,
    "deleteAt" BIGINT NOT NULL,

    CONSTRAINT "Record_pkey" PRIMARY KEY ("sessionUuid","taskUuid","userId","profileName","index")
);

-- CreateTable
CREATE TABLE "RecordAttachment" (
    "hash" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "assetRef" TEXT NOT NULL,
    "sessionUuid" TEXT NOT NULL,
    "taskUuid" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    "profileName" TEXT NOT NULL,
    "recordIndex" INTEGER NOT NULL,
    "updateAt" BIGINT NOT NULL,
    "syncAt" BIGINT NOT NULL,
    "deleteAt" BIGINT NOT NULL,

    CONSTRAINT "RecordAttachment_pkey" PRIMARY KEY ("hash")
);

-- CreateTable
CREATE TABLE "Category" (
    "name" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "icon" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    "profileName" TEXT NOT NULL,
    "updateAt" BIGINT NOT NULL,
    "syncAt" BIGINT NOT NULL,
    "deleteAt" BIGINT NOT NULL,

    CONSTRAINT "Category_pkey" PRIMARY KEY ("userId","profileName","name")
);

-- CreateTable
CREATE TABLE "Tag" (
    "name" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "icon" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    "profileName" TEXT NOT NULL,
    "updateAt" BIGINT NOT NULL,
    "syncAt" BIGINT NOT NULL,
    "deleteAt" BIGINT NOT NULL,

    CONSTRAINT "Tag_pkey" PRIMARY KEY ("userId","profileName","name")
);

-- CreateTable
CREATE TABLE "TaskAssignment" (
    "status" "TaskAssignmentStatus" NOT NULL,
    "priority" "TaskPriority" NOT NULL,
    "starred" BOOLEAN NOT NULL,
    "taskUuid" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    "profileName" TEXT NOT NULL,
    "categoryName" TEXT NOT NULL,
    "tagName" TEXT NOT NULL,
    "updateAt" BIGINT NOT NULL,
    "syncAt" BIGINT NOT NULL,
    "deleteAt" BIGINT NOT NULL,

    CONSTRAINT "TaskAssignment_pkey" PRIMARY KEY ("taskUuid","userId","profileName")
);

-- CreateTable
CREATE TABLE "ChannelSubscription" (
    "shareRecord" BOOLEAN NOT NULL,
    "channelUuid" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    "profileName" TEXT NOT NULL,
    "updateAt" BIGINT NOT NULL,
    "syncAt" BIGINT NOT NULL,
    "deleteAt" BIGINT NOT NULL,

    CONSTRAINT "ChannelSubscription_pkey" PRIMARY KEY ("channelUuid","userId","profileName")
);

-- CreateTable
CREATE TABLE "Schedule" (
    "relStart" BIGINT NOT NULL,
    "relEnd" BIGINT NOT NULL,
    "sessionUuid" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    "profileName" TEXT NOT NULL,
    "updateAt" BIGINT NOT NULL,
    "syncAt" BIGINT NOT NULL,
    "deleteAt" BIGINT NOT NULL,

    CONSTRAINT "Schedule_pkey" PRIMARY KEY ("sessionUuid","userId","profileName")
);

-- CreateTable
CREATE TABLE "FileRef" (
    "hash" TEXT NOT NULL,
    "count" INTEGER DEFAULT 1,

    CONSTRAINT "FileRef_pkey" PRIMARY KEY ("hash")
);

-- CreateTable
CREATE TABLE "_ChannelToTask" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "User_phone_key" ON "User"("phone");

-- CreateIndex
CREATE UNIQUE INDEX "User_unionId_key" ON "User"("unionId");

-- CreateIndex
CREATE UNIQUE INDEX "User_tencentId_key" ON "User"("tencentId");

-- CreateIndex
CREATE UNIQUE INDEX "User_appleId_key" ON "User"("appleId");

-- CreateIndex
CREATE INDEX "Profile_syncAt_idx" ON "Profile"("syncAt");

-- CreateIndex
CREATE INDEX "Task_syncAt_idx" ON "Task"("syncAt");

-- CreateIndex
CREATE INDEX "TaskAsset_syncAt_idx" ON "TaskAsset"("syncAt");

-- CreateIndex
CREATE INDEX "Channel_syncAt_idx" ON "Channel"("syncAt");

-- CreateIndex
CREATE INDEX "Session_syncAt_idx" ON "Session"("syncAt");

-- CreateIndex
CREATE INDEX "Record_syncAt_idx" ON "Record"("syncAt");

-- CreateIndex
CREATE INDEX "RecordAttachment_syncAt_idx" ON "RecordAttachment"("syncAt");

-- CreateIndex
CREATE UNIQUE INDEX "RecordAttachment_sessionUuid_taskUuid_userId_profileName_re_key" ON "RecordAttachment"("sessionUuid", "taskUuid", "userId", "profileName", "recordIndex");

-- CreateIndex
CREATE INDEX "Category_syncAt_idx" ON "Category"("syncAt");

-- CreateIndex
CREATE INDEX "Tag_syncAt_idx" ON "Tag"("syncAt");

-- CreateIndex
CREATE INDEX "TaskAssignment_syncAt_idx" ON "TaskAssignment"("syncAt");

-- CreateIndex
CREATE INDEX "ChannelSubscription_syncAt_idx" ON "ChannelSubscription"("syncAt");

-- CreateIndex
CREATE UNIQUE INDEX "_ChannelToTask_AB_unique" ON "_ChannelToTask"("A", "B");

-- CreateIndex
CREATE INDEX "_ChannelToTask_B_index" ON "_ChannelToTask"("B");

-- AddForeignKey
ALTER TABLE "Profile" ADD CONSTRAINT "Profile_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Task" ADD CONSTRAINT "Task_userId_profile_fkey" FOREIGN KEY ("userId", "profile") REFERENCES "Profile"("userId", "name") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Task" ADD CONSTRAINT "Task_parentUuid_fkey" FOREIGN KEY ("parentUuid") REFERENCES "Task"("uuid") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TaskAsset" ADD CONSTRAINT "TaskAsset_taskUuid_fkey" FOREIGN KEY ("taskUuid") REFERENCES "Task"("uuid") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Channel" ADD CONSTRAINT "Channel_userId_profileName_fkey" FOREIGN KEY ("userId", "profileName") REFERENCES "Profile"("userId", "name") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Session" ADD CONSTRAINT "Session_taskUuid_fkey" FOREIGN KEY ("taskUuid") REFERENCES "Task"("uuid") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Record" ADD CONSTRAINT "Record_sessionUuid_fkey" FOREIGN KEY ("sessionUuid") REFERENCES "Session"("uuid") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Record" ADD CONSTRAINT "Record_taskUuid_fkey" FOREIGN KEY ("taskUuid") REFERENCES "Task"("uuid") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Record" ADD CONSTRAINT "Record_userId_profileName_fkey" FOREIGN KEY ("userId", "profileName") REFERENCES "Profile"("userId", "name") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RecordAttachment" ADD CONSTRAINT "RecordAttachment_sessionUuid_taskUuid_userId_profileName_r_fkey" FOREIGN KEY ("sessionUuid", "taskUuid", "userId", "profileName", "recordIndex") REFERENCES "Record"("sessionUuid", "taskUuid", "userId", "profileName", "index") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Category" ADD CONSTRAINT "Category_userId_profileName_fkey" FOREIGN KEY ("userId", "profileName") REFERENCES "Profile"("userId", "name") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Tag" ADD CONSTRAINT "Tag_userId_profileName_fkey" FOREIGN KEY ("userId", "profileName") REFERENCES "Profile"("userId", "name") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TaskAssignment" ADD CONSTRAINT "TaskAssignment_taskUuid_fkey" FOREIGN KEY ("taskUuid") REFERENCES "Task"("uuid") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TaskAssignment" ADD CONSTRAINT "TaskAssignment_userId_profileName_fkey" FOREIGN KEY ("userId", "profileName") REFERENCES "Profile"("userId", "name") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TaskAssignment" ADD CONSTRAINT "TaskAssignment_userId_profileName_categoryName_fkey" FOREIGN KEY ("userId", "profileName", "categoryName") REFERENCES "Category"("userId", "profileName", "name") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TaskAssignment" ADD CONSTRAINT "TaskAssignment_userId_profileName_tagName_fkey" FOREIGN KEY ("userId", "profileName", "tagName") REFERENCES "Tag"("userId", "profileName", "name") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ChannelSubscription" ADD CONSTRAINT "ChannelSubscription_channelUuid_fkey" FOREIGN KEY ("channelUuid") REFERENCES "Channel"("uuid") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ChannelSubscription" ADD CONSTRAINT "ChannelSubscription_userId_profileName_fkey" FOREIGN KEY ("userId", "profileName") REFERENCES "Profile"("userId", "name") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Schedule" ADD CONSTRAINT "Schedule_sessionUuid_fkey" FOREIGN KEY ("sessionUuid") REFERENCES "Session"("uuid") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Schedule" ADD CONSTRAINT "Schedule_userId_profileName_fkey" FOREIGN KEY ("userId", "profileName") REFERENCES "Profile"("userId", "name") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ChannelToTask" ADD CONSTRAINT "_ChannelToTask_A_fkey" FOREIGN KEY ("A") REFERENCES "Channel"("uuid") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ChannelToTask" ADD CONSTRAINT "_ChannelToTask_B_fkey" FOREIGN KEY ("B") REFERENCES "Task"("uuid") ON DELETE CASCADE ON UPDATE CASCADE;
