create database senac_exercicio;

use senac_exercicio;

create table ambulatorio(
	
    nroa int,
    andar numeric(3) not null,
    capacidade smallint
); 

create table medicos(
	
    codm int,
    nome varchar(40) not null,
    idade smallint not null,
    especilidade char(20),
    cpf numeric(11) unique,
    cidade varchar(30),
    nroa int
);


create table pacientes(
	
    codp int,
    nome varchar(40) not null, 
    idade smallint not null,
	cidade char(30),
    cpf numeric(11) unique,
    doenca varchar(40) not null
);


create table funcionarios(
	
    codf int,
    nome varchar(40) not null,
    idade smallint not null,
    cpf numeric(11) unique,
    cidade varchar(30),
    salario numeric(10),
    cargo varchar(20)
);

alter table funcionarios add column nroa int;
alter table funcionarios drop column cargo; 


create table consultas(
	codm int,
    codp int, 
    data_cons date,
    hora time
);



insert into ambulatorio values(1, 1, 30),
(2, 1, 50),
(3, 2, 40),
(4, 2, 25),
(5, 2, 55);

select * from ambulatorio;

insert into medicos values(1, 'Joao', 40, 'ortopedia', 10000100000, 'Florianopolis', 1),
(2, 'Maria', 42, 'traumatologia', 10000110000, 'Blumenau', 2),
(3, 'Pedro', 51, 'pediatria', 11000100000, 'São José', 2),
(4, 'Carlos', 28, 'ortopedia', 11000110000, 'Joinville', 3),
(5, 'Marcia', 33, 'neurologia', 11000111000, 'Biguacu', 3);


select * from medicos;

insert into pacientes values
(1, 'Ana', 20, 'Florianopolis', 20000200000, 'gripe'),
(2, 'Paulo', 24,'Palhoca', 20000220000, 'fratura'),
(3, 'Lucia', 30,'Biguacu', 22000200000, 'tendinite'),
(4, 'Carlos', 28, 'Joinville', 11000110000, 'sarampo');

select * from pacientes;

insert into consultas values
(1, 1, '2006-06-12', '14:00'),
(1, 4, '2006-06-13', '10:00'),
(2, 1, '2006-06-13', '9:00'),
(2, 2, '2006-06-13', '11:00'),
(2, 3, '2006-06-14', '14:00'),
(2, 4, '2006-06-14', '17:00'),
(3, 1, '2006-06-19', '18:00'),
(3, 3, '2006-06-12', '10:00'),
(3, 4, '2006-06-19', '13:00'),
(4, 4, '2006-06-20', '13:00'),
(4, 4, '2006-06-22', '19:00');

drop table consultas;

select * from funcionarios;

insert into funcionarios values
(1, 'Rita', 32, 20000100000, 'Sao Jose',  1200),
(2, 'Maria', 55, 30000110000, 'Palhoca', 1220),
(3, 'Caio', 45,  41000100000, 'Florianopolis', 1100),
(4, 'Carlos', 44, 51000110000, 'Florianopolis', 1200),
(5, 'Paula', 33, 61000111000, 'Florianopolis', 2500);

update pacientes set cidade = 'Ilhota' where codp = 2;

update consultas set data_cons = '2006-06-04', hora = '12:00' where codp = 4 and codm = 1;

delete from funcionarios where codf = 4;


