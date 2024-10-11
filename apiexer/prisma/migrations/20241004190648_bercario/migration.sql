/*
  Warnings:

  - You are about to alter the column `data` on the `bebes` table. The data in that column could be lost. The data in that column will be cast from `DateTime(0)` to `DateTime`.

*/
-- AlterTable
ALTER TABLE `bebes` MODIFY `data` DATETIME NOT NULL;
