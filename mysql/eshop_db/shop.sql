create table eshop_db.shop
(
    id        INT(10) UNSIGNED auto_increment,
    name      VARCHAR(50)  not null,
    address   VARCHAR(150) not null,
    open_time TIME(8)      not null,
    primary key (id, name, address, open_time),
    constraint shop_ibfk_1
        foreign key (id) references eshop_db.`order` (product_id)
);

