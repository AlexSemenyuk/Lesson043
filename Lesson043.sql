/*
* Java. Lesson043. Task01
* Створити бд movies
* Semenyuk Alexander
* Date 17.12.2022
* Створити бд movies
* В базі створити 4 таблиці, як показано на схемі https://drawsql.app/teams/maxchv/diagrams/alter-and-insert-task
* Прислати sql запити на перевірку
 */
CREATE DATABASE myDataBase default char set utf8;
USE myDataBase;
CREATE TABLE movies
(
    id           int primary key auto_increment not null,
    title        varchar(50)                    not null,
    release_year int,
    rating       int,
    plot         text,
    length       int,
    director_id  int                            not null,
    gente_id     int                            not null
);
CREATE TABLE directors
(
    id          int primary key auto_increment not null,
    first_name  varchar(50)                    not null,
    last_name   varchar(50)                    not null,
    nationality varchar(50),
    birth_date  date
);
CREATE TABLE actors
(
    id          int primary key auto_increment not null,
    first_name  varchar(50)                    not null,
    last_name   varchar(50)                    not null,
    nationality varchar(50),
    birth_date  date
);
CREATE TABLE genres
(
    id          int primary key auto_increment not null,
    name        varchar(50) unique             not null
);