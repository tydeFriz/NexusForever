CREATE TABLE IF NOT EXISTS `character_costume` (
    `id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
    `index` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `mask` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`, `index`),
    CONSTRAINT `FK__character_costume_id__character_id` FOREIGN KEY (`id`) REFERENCES `character` (`id`) ON DELETE CASCADE
);