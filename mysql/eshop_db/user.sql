create table eshop_db.user
(
    id      INT(10) UNSIGNED auto_increment,
    name    VARCHAR(50) not null,
    surname VARCHAR(50) not null,
    phone   VARCHAR(20) not null,
    email   VARCHAR(60) not null,
    country VARCHAR(30) not null,
    primary key (id, name, surname, phone, email, country),
    constraint user_ibfk_1
        foreign key (id) references eshop_db.`order` (id)
);

