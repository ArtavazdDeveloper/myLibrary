create table my_library.author
(
    id      INT(10) auto_increment
        primary key,
    name    VARCHAR(255) not null,
    surname VARCHAR(255) null,
    email   VARCHAR(255) not null,
    age     INT(10)      not null
);

