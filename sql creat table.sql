

### making table en sql

drop schema if exists many_to_one1;
CREATE SCHEMA many_to_one1;
USE many_to_one1;

CREATE TABLE AUTHOR(
author_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50),
email VARCHAR(50),
biography TEXT

);
CREATE TABLE book(
book_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(300),
sinopsis TEXT,
num_page INT,
author_id INT,
CONSTRAINT FK_book FOREIGN KEY (author_id) REFERENCES author(author_id)
);




Insert Into author(first_name, email, biography)
values
('author1', 'a1@company.com', 'biografia inventada'),
('author2', 'a2@company.com', 'biografia inventada'),
('author3', 'a3@company.com', 'biografia inventada');

select * from author;


insert into book( title, sinopsis, num_page, author_id)
VALUES
('book 1', 'lorem ipsum dolor', 500, 1),
('book 2', 'descripcion guay', 950, 1),
('book 3', 'otra descripcion', 700, 2);
select * from book;
/////


-- insert company
-- insert employee-- insert employee poinendo una company que no existe y comprobar que da error
-- delete company que tenga employees asociados y comprobar que no deja borrar
-- crear table company--
drop schema if exists many_to_one2;
create schema  many_to_one2;
use many_to_one2;
create table if not exists company(
id int not null primary key auto_increment,
cif varchar(9) not null,
phone varchar(12)
);

-- crear tabel employee , con foreign key a company

create table if not exists employee (
id int not null primary key auto_increment,
nif varchar(9) not null,
salary decimal(12, 2),
id_company int,
foreign key (id_company) references company(id)
);
insert into company (cif, phone) values
('b1111111', '11111111'),
('B2222222', '22222222');
select  * from empoloyee;

insert into employee (nif, salary, id_company) values
('22334', 234.13 , 22);


