create table my_library.user
(
    id       INT(10) auto_increment
        primary key,
    name     VARCHAR(255)            not null,
    surname  VARCHAR(255)            not null,
    password VARCHAR(255)            not null,
    type     ENUM (5) default 'USER' not null
);

