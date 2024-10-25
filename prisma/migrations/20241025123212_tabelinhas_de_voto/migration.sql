/*
  Warnings:

  - You are about to drop the `bebes` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `maes` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `medicos` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `bebes` DROP FOREIGN KEY `bebes_maeId_fkey`;

-- DropForeignKey
ALTER TABLE `bebes` DROP FOREIGN KEY `bebes_medicoId_fkey`;

-- DropTable
DROP TABLE `bebes`;

-- DropTable
DROP TABLE `maes`;

-- DropTable
DROP TABLE `medicos`;

-- CreateTable
CREATE TABLE `Candidatos` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(30) NOT NULL,
    `clube` VARCHAR(30) NOT NULL,
    `idade` SMALLINT NOT NULL,
    `Sonho` VARCHAR(191) NOT NULL,
    `NumVotos` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `clientes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(30) NOT NULL,
    `email` VARCHAR(60) NOT NULL,
    `cidade` VARCHAR(60) NOT NULL,
    `dataNasc` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `votos uwu` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `clienteid` INTEGER NOT NULL,
    `candidataId` INTEGER NOT NULL,
    `justificativa` VARCHAR(100) NULL,
    `data` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `votos uwu` ADD CONSTRAINT `votos uwu_clienteid_fkey` FOREIGN KEY (`clienteid`) REFERENCES `clientes`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `votos uwu` ADD CONSTRAINT `votos uwu_candidataId_fkey` FOREIGN KEY (`candidataId`) REFERENCES `Candidatos`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
