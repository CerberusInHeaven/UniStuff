-- CreateTable
CREATE TABLE `maes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(30) NOT NULL,
    `endereco` VARCHAR(30) NOT NULL,
    `telefone` VARCHAR(20) NOT NULL,
    `datanasc` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `medicos` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(30) NOT NULL,
    `crm` SMALLINT NOT NULL,
    `celular` VARCHAR(20) NOT NULL,
    `especialidade` VARCHAR(30) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `bebes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(30) NOT NULL,
    `datanasc` DATETIME(3) NOT NULL,
    `peso` DECIMAL(6, 3) NOT NULL,
    `altura` DECIMAL(4, 2) NOT NULL,
    `maeId` INTEGER NOT NULL,
    `medicoId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `bebes` ADD CONSTRAINT `bebes_maeId_fkey` FOREIGN KEY (`maeId`) REFERENCES `maes`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `bebes` ADD CONSTRAINT `bebes_medicoId_fkey` FOREIGN KEY (`medicoId`) REFERENCES `medicos`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
