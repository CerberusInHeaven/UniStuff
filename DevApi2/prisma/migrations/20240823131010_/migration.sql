-- CreateTable
CREATE TABLE `carros` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `modelo` VARCHAR(50) NOT NULL,
    `ano` SMALLINT NOT NULL,
    `preco` DECIMAL(10, 2) NOT NULL,
    `cor` VARCHAR(30) NULL,
    `marca` VARCHAR(20) NOT NULL,
    `combustivel` ENUM('FLEX', 'GASOLINA', 'ALCOOL', 'DIESEL', 'ELETRICIDADE') NOT NULL DEFAULT 'FLEX',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
