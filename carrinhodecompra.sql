/**
carrinho de compra
@autor: João Victor S. Sena

*/

-- Pesquisar databases disponiveis
show databases;

-- Criando um banco de dados
create database dbcarrinhodecompra;

-- Remover um banco de dados
drop database dbcarrinhodecompra;

-- Selecionar o banco de dados
use dbcarrinhodecompra;

-- Criando uma tabela no banco de dados
create table carrinho(
	id int primary key auto_increment,
    produto varchar(100) not null,
    quantidade int (15) not null,
    valor decimal (10,2) not null
);

-- Verificar tabelas disponiveis no banco de dados
show tables;

-- Comando usado para descrever a tabela 
describe carrinho;

-- Comando usado para excluir tabela
drop table carrinho;

insert into carrinho (produto,quantidade,valor)
values ('Papel sulfite' , 100 , 5.00);

insert into carrinho (produto,quantidade,valor)
values ('régua' , 25 , 7.00);

insert into carrinho (produto,quantidade,valor)
values ('Lapis de colorir' , 15 , 24.99);

insert into carrinho (produto,quantidade,valor)
values ('Borracha branca' , 50 , 2);

insert into carrinho (produto,quantidade,valor)
values ('Caderno de brochuras' , 10 , '12');

insert into carrinho (produto,quantidade,valor)
values ('Caderno' , 30 , 14.90);

insert into carrinho (produto,quantidade,valor)
values ('lapzeira' , 10 , 7.99);

insert into carrinho (produto,quantidade,valor)
values ('Escalimetro' , 5 , 29.99);

insert into carrinho (produto,quantidade,valor)
values ('Cartulina' , 22 , 4);

insert into carrinho (produto,quantidade,valor)
values ('Cola bastão' , 25 , 5);

select * from carrinho;

-- ( ASC - ordem alfabetica de A até Z )
select * from carrinho order by produto asc;

-- ( ASC - ordem alfabetica de Z até A )
select * from produto order by nome desc;

-- operações matematicas 
select sum(valor*quantidade) as total from carrinho;

 