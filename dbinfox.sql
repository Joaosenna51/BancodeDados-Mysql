/**
Atividade 3 Banco de dados DBINFOX
@autor: João Victor S. Sena
Data da Criação 01/09/2021

*/

-- Pesquisar databases disponiveis
show databases;


-- Criando um banco de dados
create database dbinfox;

-- Selecionar o banco de dados
use dbinfox;


-- Criando uma tabela no banco de dados
-- tabela de funcionarios (usuarios)
create table usuarios(
	id int primary key auto_increment,
    usuario varchar(50) not null,
    email varchar(250) not null unique,
    login varchar(10) not null unique,
    senha varchar(10)
);

-- tabela de clientes (clientes da assistencia tecnica)
create table clientes(
idcli int primary key auto_increment,	
nome varchar(100) not null,
fone varchar(20) not null unique 
);



-- tabela de ordem de serviço (OS)
create table tbos(
	idos int primary key auto_increment,
    equipamento varchar(250) not null,
    defeito varchar(250)not null,
    dataOs timestamp default current_timestamp,
    statusOs varchar(50) not null,
    valor decimal(10,2),
    idcli int not null,
    foreign key (idcli) references clientes(idcli)    
);

insert into tbos(equipamento,defeito,statusOs,idcli)
values ('Notebook Asus Modelo VIVABOOK','HD com erro de leitura','Analise/Orçamento',1);

insert into tbos(equipamento,defeito,statusOs,valor,idcli)
values ('Notebook DELL Modelo Inspiron','Troca de sistema operacional','Aprovado','150',2);


describe clientes;
describe usuarios;



show tables;


drop table clientes;
drop table usuarios;

insert into usuarios (usuario,email,login,senha)
values ('Edward Snowden','edsnow@outlook.com','snwdm','1234');

insert into clientes (nome,fone)
values ('luciana ferraz','91234-7070');

insert into clientes (nome,fone)
values ('José de Assis','91234-7171');

-- comando usado para alterar campo na tabela
alter table usuarios modify senha varchar(250);
alter table usuarios modify login varchar(250);



-- Armazenando um campo com Criptografia
insert into usuarios (usuario,email,login,senha)
values ('anonymous','ADM',md5('1234'));

insert into usuarios (usuario,email,login,senha)
values ('Robson Vaamonde','linux00',md5('a1b2'));

insert into usuarios (usuario,email,login,senha)
values ('Leandro Ramos','','windows',md5('4321'));

insert into usuarios (usuario,email,login,senha)
values ('Kelly Cristina','raciocinio@logico','logica',md5('0101'));

insert into usuarios (usuario,email,login,senha)
values ('José de Assis','deassis@jose.com','mysql',md5('0001'));

insert into usuarios (usuario,email,login,senha)
values ('Edilson silva','backend@devops.com','DEVOPS',md5('0000'));


select * from usuarios;

select * from clientes;

select * from tbos;

-- excluindo um registro especifico da tabela (USAR SEMPRE O ID COMO FORMA DE "SEGURANÇA") 
delete from usuarios where id=3;