-- Criação do banco de Dados
create database db_rh;

-- Usando o banco de dados para as querys
use db_rh;

-- criando a tabela
create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(20) not null,
    idade int (3) not null,
    salario decimal (10,2),
    ativo boolean,
    
    primary key(id)
);

-- Inserindo os valores na minha tabela.

insert into tb_funcionarios (nome, idade, salario, ativo) values ("Gabriel Duarte", 27, 3000, true);
insert into tb_funcionarios (nome, idade, salario, ativo) values ("Gabrielly", 20, 5000, true);
insert into tb_funcionarios (nome, idade, salario, ativo) values ("Gabriel Costa", 19, 1500, true);
insert into tb_funcionarios (nome, idade, salario, ativo) values ("Marco", 25, 7500, true);
insert into tb_funcionarios (nome, idade, salario, ativo) values ("Mariana", 24, 2800, true);

-- Selecionando os funcionaries com salario maior que 3000

select * from tb_funcionarios where salario > 3000;

-- Selecionando os funcionaries com salario menor que 3000

select * from tb_funcionarios where salario < 3000;

-- Atualizando um dado da minha tabela

update tb_funcionarios set salario = 10000.00
	where id = 1;