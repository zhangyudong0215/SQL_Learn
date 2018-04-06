CREATE TABLE `actor` 
(
    `actor_id` smallint(5) NOT NULL,
    `first_name` varchar(45) not null,
    `last_name` varchar(45) not null,
    `last_update` timestamp not null default (datetime('now','localtime')),
    PRIMARY KEY (`actor_id`)
);