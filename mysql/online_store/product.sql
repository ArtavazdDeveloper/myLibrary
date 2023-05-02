create table online_store.product
(
    id          INT(10) auto_increment
        primary key,
    name        VARCHAR(255)  not null,
    description TEXT(65535)   not null,
    price       DOUBLE(22, 0) not null,
    quantity    INT(10)       not null,
    category_id INT(10)       not null,
    constraint product_category_id_fk
        foreign key (category_id) references online_store.category (id)
);

