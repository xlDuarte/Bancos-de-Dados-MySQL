-- Criação do banco de Dados
create database db_ecommerce;

-- Usando o banco de dados para as querys
use db_ecommerce;

-- criando a tabela
create table tb_produtos(
	id bigint(5) auto_increment,
    	nome varchar(30) not null,
    	marca varchar(20) not null,
    	preco decimal(10,2),
    	ativo boolean,
    
    	primary key(id)
);

-- Inserindo os valores na minha tabela.

insert into tb_produtos (nome, marca, preco, ativo) values ("Celular", "Apple", 5999.00, true);
insert into tb_produtos (nome, marca, preco, ativo) values ("Celular", "Samsung", 3500.00, true);
insert into tb_produtos (nome, marca, preco, ativo) values ("Notebook", "Asus", 9000.00, true);
insert into tb_produtos (nome, marca, preco, ativo) values ("Aparelho de Som", "JBL", 1000.00, true);
insert into tb_produtos (nome, marca, preco, ativo) values ("Monitor", "Acer", 2000.00, true);
insert into tb_produtos (nome, marca, preco, ativo) values ("Mousepad", "ReDragon", 200.00, true);
insert into tb_produtos (nome, marca, preco, ativo) values ("Cadeira Gamer", "Dazz", 820.00, true);
insert into tb_produtos (nome, marca, preco, ativo) values ("Luz Rgb USB", "Game Over", 500.00, true);

-- Selecionando os produtos com valor maior que 500

select * from tb_produtos where preco > 500;

-- Selecionando os produtos com valor menor que 500

select * from tb_produtos where preco < 500;

-- Atualizando um dado da minha tabela

update tb_produtos set preco = 100
	where id = 8