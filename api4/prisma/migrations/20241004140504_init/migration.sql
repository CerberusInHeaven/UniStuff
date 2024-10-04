/*
  Warnings:

  - You are about to alter the column `ano` on the `vinhos` table. The data in that column could be lost. The data in that column will be cast from `VarChar(50)` to `SmallInt`.

*/
-- AlterTable
ALTER TABLE `vinhos` MODIFY `ano` SMALLINT NOT NULL;
