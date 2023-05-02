create table eshop_db.`order`
(
    id         INT(10) UNSIGNED not null
        primary key,
    order_date DATETIME(19)     null,
    user_id    INT(10) UNSIGNED not null,
    product_id INT(10) UNSIGNED,
    shop_id    INT(10) UNSIGNED not null,
    constraint order_ibfk_1
        foreign key (id) references eshop_db.user (id)
);

create index product_id
    on eshop_db.`order` (product_id);

alter table eshop_db.`order`
    modify product_id INT(10) UNSIGNED auto_increment;

