--liquibase formatted sql

--changeset BR:1 labels:TableUpdate context:new tabs required
--comment: example comment
create table person (
  --  id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE person;

--changeset BR:2 labels:TableUpdate context:new tabs required

--comment: example comment
create table company (
   -- id int primary key auto_increment not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE company;

--changeset BR:31 labels:TableUpdate context:new tabs required
--comment: example comment
alter table person add column country varchar(2)
--rollback ALTER TABLE person DROP COLUMN country;

drop table company