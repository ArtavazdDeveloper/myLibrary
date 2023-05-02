create table my_library.book
(
    id          INT(10) auto_increment
        primary key,
    title       INT(10)       not null,
    description VARCHAR(255)  not null,
    price       DOUBLE(22, 0) not null,
    author_id   INT(10)       not null,
    constraint book_author__fk
        foreign key (author_id) references my_library.author (id)
);

