create table online_store.category
(
    id          INT(10) auto_increment
        primary key,
    name        VARCHAR(255) not null,
    description TEXT(65535)  not null
);

