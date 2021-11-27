-- EXERCÍCIO 04

-- db_cidade_das_carnes ou db_cidade_das_frutas, onde o sistema trabalhará com as informações dos produtos desta empresa. 
-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

	 create database db_cidade_das_carnes;
     use db_cidade_das_carnes;

-- abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desse açougue.

     create table tb_categoria (
		id bigint auto_increment,
        
		tipo_da_carne varchar(255) not null,
        churrasco boolean not null,
		congelado boolean not null,       
               
        primary key (id)
     );     
     select * from tb_categoria;
     
    insert into tb_categoria (tipo_da_carne, churrasco, congelado) values ("Bovina",true,true);
    insert into tb_categoria (tipo_da_carne, churrasco, congelado) values ("Bovina",true,true);
    insert into tb_categoria (tipo_da_carne, churrasco, congelado) values ("Bovina",false,false);
    insert into tb_categoria (tipo_da_carne, churrasco, congelado) values ("Bovina",false,false);
    insert into tb_categoria (tipo_da_carne, churrasco, congelado) values ("Frango",true,true);
    
-- Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 
 -- atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia
 -- (não esqueça de criar a foreign key de tb_categoria nesta tabela).
 
     create table tb_produto (		
		id bigint auto_increment,
        
        nome varchar (255) not null,
        preco decimal (8,2) not null,
        estoque_produto int not null,
        validade varchar (255) not null,
        categoria_id bigint,
        
        primary key (id),
		foreign key (categoria_id) REFERENCES tb_categoria (id)        
     );
     
     select *from tb_produto;
     
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Picanha",100,255,"30 dias",1);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Contrafilé",60,255,"30 dias",1);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Alcatra",80,255,"30 dias",1);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Maminha",60,255,"30 dias",2);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Acém",80,255,"30 dias",3);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Bisteca",60,255,"30 dias",4);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Frango Inteiro",45,255,"15 dias",5);
	insert into tb_produto (nome, preco, estoque_produto, validade, categoria_id) values ("Asinha de Frango",20,255,"15 dias",5);
    
    select * from tb_produto where preco > 50;
    
    select * from tb_produto where preco between 3 and 60;
    
    select * from tb_produto where nome like "%C%";
    
	-- Faça um um select com Inner join entre  tabela categoria e produto.
    select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
    
    -- Faça um select onde traga todos os Produtos de uma categoria 
    -- específica (exemplo todos os produtos que são aves ou legumes).    
    select * from tb_produto where categoria_id = 5; -- frango