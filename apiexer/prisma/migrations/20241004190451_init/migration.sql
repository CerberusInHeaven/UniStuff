-- CreateTable
CREATE TABLE `Maes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(30) NOT NULL,
    `endereco` VARCHAR(255) NOT NULL,
    `telefone` VARCHAR(30) NOT NULL,
    `birthdate` VARCHAR(50) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `medicos` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(50) NOT NULL,
    `telefone` VARCHAR(30) NOT NULL,
    `crm` MEDIUMINT NOT NULL,
    `especialidade` VARCHAR(50) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `bebes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(50) NOT NULL,
    `peso` DECIMAL(10, 2) NOT NULL,
    `data` DATETIME NOT NULL,
    `maeinfo` INTEGER NOT NULL,
    `medicoinfo` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `bebes` ADD CONSTRAINT `bebes_maeinfo_fkey` FOREIGN KEY (`maeinfo`) REFERENCES `Maes`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `bebes` ADD CONSTRAINT `bebes_medicoinfo_fkey` FOREIGN KEY (`medicoinfo`) REFERENCES `medicos`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
