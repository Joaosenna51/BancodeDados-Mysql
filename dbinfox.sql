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
create table usuarios(
	id int primary key auto_increment,
    usuario varchar(50) not null,
    login varchar(10) not null unique,
    senha varchar(10)
);

describe usuarios;

drop table usuarios;