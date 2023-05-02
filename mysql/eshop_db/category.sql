create table eshop_db.category
(
    id          INT(10) UNSIGNED auto_increment
        primary key,
    name        VARCHAR(250) not null,
    description TEXT(65535)  null,
    constraint category_ibfk_1
        foreign key (id) references eshop_db.product (category_id)
);

