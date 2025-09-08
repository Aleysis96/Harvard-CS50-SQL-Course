CREATE TABLE `Users`(
    `id` INT AUTO_INCREMENT,
    `first_name○` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR(50) NOT NULL,
    `username` VARCHAR(50) NOT NULL UNIQUE,
    `password` CHAR(128),
    PRIMARY KEY (`id`)
);


CREATE TABLE `Schools_Unis`(
    `id` INT AUTO_INCREMENT,
    `School_name` VARCHAR(50) NOT NULL UNIQUE,
    `School_type` ENUM('Primary', 'Secondary', 'Higher Education') NOT NULL,
    `School_location` VARCHAR(70) NOT NULL,
    `School_founded` SMALLINT NOT NULL,
    PRIMARY KEY (`id`)
);


CREATE TABLE `Companies`(
    `id` INT AUTO_INCREMENT,
    `Company_name` VARCHAR(50) NOT NULL UNIQUE,
    `Company_Industry` ENUM('Technology', 'Education', 'Business') NOT NULL,
    `Company_location` VARCHAR(70) NOT NULL,
    PRIMARY KEY (`id`)
);


CREATE TABLE `Connections_And_Users` (
    `id` INT AUTO_INCREMENT,
    `user_a_id` INT UNSIGNED NOT NULL,
    `user_b_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user_a_id`) REFERENCES `Users`(`id`),
    FOREIGN KEY(`user_b_id`) REFERENCES `Users`(`id`)
);

CREATE TABLE `Connections_And_Schools` (
    `id` INT AUTO_INCREMENT,
    `User_id` INT NOT NULL,
    `School_id` INT NOT NULL,
    `Degree_type` VARCHAR(16),
    `Start_date` DATE,
    `End_date` DATE,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`User_id`) REFERENCES `Users`(`id`),
    FOREIGN KEY(`School_id`) REFERENCES `Schools_Unis`(`id`)
);

CREATE TABLE `Connections_And_Companies`(
    `id` INT AUTO_INCREMENT,
    `User_id` INT NOT NULL,
    `Company_id` INT NOT NULL,
    `Start_date` DATE,
    `End_date` DATE,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`User_id`) REFERENCES `Users`(`id`),
    FOREIGN KEY(`Company_id`) REFERENCES `Companies`(`id`)
);
