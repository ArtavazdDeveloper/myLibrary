create table company_employee.employee
(
    id         INT(10) auto_increment
        primary key,
    name       VARCHAR(255) not null,
    surname    VARCHAR(255) not null,
    email      VARCHAR(255) not null,
    company_id INT(10)      not null,
    constraint employee_fk_company
        foreign key (company_id) references company_employee.company (id)
);

