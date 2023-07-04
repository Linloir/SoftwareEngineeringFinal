/*
  Warnings:

  - You are about to drop the column `tagName` on the `TaskAssignment` table. All the data in the column will be lost.
  - You are about to drop the `_ChannelToTask` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "TaskAssignment" DROP CONSTRAINT "TaskAssignment_userId_profileName_tagName_fkey";

-- DropForeignKey
ALTER TABLE "_ChannelToTask" DROP CONSTRAINT "_ChannelToTask_A_fkey";

-- DropForeignKey
ALTER TABLE "_ChannelToTask" DROP CONSTRAINT "_ChannelToTask_B_fkey";

-- AlterTable
ALTER TABLE "Task" ADD COLUMN     "channelUuid" TEXT;

-- AlterTable
ALTER TABLE "TaskAssignment" DROP COLUMN "tagName";

-- DropTable
DROP TABLE "_ChannelToTask";

-- CreateTable
CREATE TABLE "TaskAssignmentTags" (
    "taskUuid" TEXT NOT NULL,
    "userId" INTEGER NOT NULL,
    "profileName" TEXT NOT NULL,
    "tagName" TEXT NOT NULL,

    CONSTRAINT "TaskAssignmentTags_pkey" PRIMARY KEY ("taskUuid","userId","profileName","tagName")
);

-- AddForeignKey
ALTER TABLE "Task" ADD CONSTRAINT "Task_channelUuid_fkey" FOREIGN KEY ("channelUuid") REFERENCES "Channel"("uuid") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TaskAssignmentTags" ADD CONSTRAINT "TaskAssignmentTags_taskUuid_userId_profileName_fkey" FOREIGN KEY ("taskUuid", "userId", "profileName") REFERENCES "TaskAssignment"("taskUuid", "userId", "profileName") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TaskAssignmentTags" ADD CONSTRAINT "TaskAssignmentTags_userId_profileName_tagName_fkey" FOREIGN KEY ("userId", "profileName", "tagName") REFERENCES "Tag"("userId", "profileName", "name") ON DELETE CASCADE ON UPDATE CASCADE;
