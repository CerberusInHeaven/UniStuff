-- CreateTable
CREATE TABLE `viagens` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `destino` VARCHAR(255) NOT NULL,
    `transporte` ENUM('TERRESTRE', 'MARITIMO', 'AEREO') NOT NULL DEFAULT 'AEREO',
    `dataSaida` DATETIME(3) NOT NULL,
    `preco` DECIMAL(10, 2) NOT NULL,
    `duracao` SMALLINT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
