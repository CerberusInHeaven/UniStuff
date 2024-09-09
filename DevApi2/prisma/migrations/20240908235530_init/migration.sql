/*
  Warnings:

  - You are about to alter the column `modelo` on the `carros` table. The data in that column could be lost. The data in that column will be cast from `VarChar(50)` to `VarChar(30)`.

*/
-- AlterTable
ALTER TABLE `carros` MODIFY `modelo` VARCHAR(30) NOT NULL;
