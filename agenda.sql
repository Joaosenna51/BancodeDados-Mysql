/**
Agenda de Contato
@autor: João Victor S. Sena

*/

-- Pesquisar databases disponiveis
show databases;

-- Criando um banco de dados
create database dbagenda;

-- Remover um banco de dados
drop database dbagenda;

-- Selecionar o banco de dados
use dbagenda;

-- Criando uma tabela no banco de dados
create table contatos(
	id int primary key auto_increment,
    nome varchar(50) not null,
    fone varchar(15) not null,
    email varchar(50)unique
);

-- Verificar tabelas disponiveis no banco de dados
show tables;

-- Comando usado para descrever a tabela 
describe contatos;

-- Comando usado para excluir tabela
drop table contatos;

-- comando usado para apagar uma tabela
alter table contatos drop column obs;

-- Comando usado para alterar o nome de um campo (cabeçalho) da tabela
alter table contatos change nome contato varchar(50) not null;

-- comando usado para adicionar um novo campo da tabela
alter table contatos add column obs varchar(250);

-- comando usado para adicionar um novo campo em um lugar especifico
alter table contatos add column fone2 varchar(15) after fone;

-- comando usado para modificar o tipo  de dados e/ou validações do campo
alter table contatos modify column fone2 varchar(15) not null after fone;
alter table contatos modify email varchar(100);
alter table contatos modify email varchar(100) unique;

select * From contatos;

-- A linha abaixo modifica o tipo de dado de um campo
-- decimal(10,2) 10 digitos com duas casas decimais
alter table carrinho modify valor decimal(10,2) not null;


/*
CRUD (do inglês: Create Read Update Delete)
São as quatro operações básicas que podem ser
realizadas em banco de dados que usam o modelo
relacional.



CREATE (inserção do registro(dados) na tabela)
READ (pesquisa dos dados na(s) tabela(s))
UPDATE (alteração de algum registro da tabela)
DELETE (exclusão de um registro da tabela)



*/

/*CRUD - CREATE (insert)*/
insert into contatos (nome,fone,email)
values ('Bruce Wayne' , '11 2077-7070' , 'helpgothan@morcego.com');

insert into contatos(nome,fone)
values ('beatriz' , '11 2130-7075');

insert into contatos (nome,fone,email)
values ('Clark kent' , '11 2540-7070' , 'kriptonmen@superman.com');

insert into contatos (nome,fone,email)
values ('Petter Parker' , '11 2540-7070' , 'caiunateia@aranha.com');

insert into contatos (nome,fone,email)
values ('Stephen Vincent Strange' , '11 6969-7070' , 'multiverso@strange.com');

insert into contatos (nome,fone,email)
values ('Bruce Banner' , '11 3040-7170' , 'esmagados@raiogama.com');

insert into contatos (nome,fone,email)
values ('Tony Stark' , '11 4142-7070' , 'melhorvingador@homemdeferro.com');

insert into contatos (nome,fone,email)
values ('Blade' , '11 2540-7070' , 'matavamps@aguabenta.com');

insert into contatos (nome,fone)
values ('Natasha Romanoff' , '11 2540-7070');

insert into contatos (nome,fone,email)
values ('Thor Odinsons' , '11 7474-0070' , 'valhalla@trovão.com');

/*CRUD - READ (select)*/
select * From contatos;

-- selecionar todos registros em ordem alfabética (asc desc)

-- ( ASC - ordem alfabetica de A até Z )
select * from contatos order by nome asc;

-- ( ASC - ordem alfabetica de Z até A )
select * from contatos order by nome desc;

-- comado para localizar um registro especifico
select * from contatos where nome='Bruce Wayne';

-- filtrar nomes que começam com a letra B
select * from contatos where nome like 'B%';

-- selecionar um registro específico pelo ID
select * from contatos where id=5;
