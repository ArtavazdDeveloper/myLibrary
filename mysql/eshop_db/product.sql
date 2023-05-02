create table eshop_db.product
(
    id           INT(10) UNSIGNED not null,
    name         VARCHAR(250)     not null,
    product_code VARCHAR(250)     not null,
    description  TEXT(65535)      not null,
    price        INT(10) UNSIGNED not null,
    count        VARCHAR(250)     not null,
    category_id  INT(10) UNSIGNED,
    primary key (id, category_id),
    constraint product_ibfk_1
        foreign key (id) references eshop_db.`order` (product_id)
);

create index category_id
    on eshop_db.product (category_id);

alter table eshop_db.product
    modify category_id INT(10) UNSIGNED auto_increment;

