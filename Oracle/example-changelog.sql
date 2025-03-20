--liquibase formatted sql

--changeset BenDemo3 labels:example-label context:example-context
--comment: example comment
create table person (
    id number(10) primary key not null,
    name varchar2(50) not null,
    address1 varchar2(50),
    address2 varchar2(50),
    city varchar2(30)
);

--rollback 
--DROP TABLE person;

--changeset BenDemo4 labels:example-label context:example-context
--comment: example comment
create table company (
    id number(10) primary key not null,
    name varchar2(50) not null,
    address1 varchar2(50),
    address2 varchar2(50),
    city varchar2(30)
);

--rollback 
--DROP TABLE company;

--rollback ALTER TABLE person DROP COLUMN country;
