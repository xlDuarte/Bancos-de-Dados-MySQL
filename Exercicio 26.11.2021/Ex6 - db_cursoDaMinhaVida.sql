-- EXERCÍCIO 06

-- db_cursoDaMinhaVida, onde o sistema trabalhará com as informações dos produtos desta empresa. 
-- O sistema trabalhará com 2 tabelas tb_curso e tb_categoria

create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

-- abstração e determine 3 atributos relevantes do tb_categoria 

     create table tb_categoria (
		id bigint auto_increment,
        
        categorias varchar (255) not null, 
		quantia_cursos int not null,
        Plataforma varchar (255) not null,
               
        primary key (id)
     );     
     select * from tb_categoria;
     
    insert into tb_categoria (categorias, quantia_cursos, Plataforma) values ("Informática",12,"Hotmart");
	insert into tb_categoria (categorias, quantia_cursos, Plataforma) values ("Mecatrônica", 12,"Hotmart"); 
	insert into tb_categoria (categorias, quantia_cursos, Plataforma) values ("Alemão", 6,"Hotmart");
	insert into tb_categoria (categorias, quantia_cursos, Plataforma) values ("Artesanato", 12,"Hotmart");
    insert into tb_categoria (categorias, quantia_cursos, Plataforma) values ("Inglês", 6,"Hotmart");

 -- Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 
 -- atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia
 -- (não esqueça de criar a foreign key de tb_categoria nesta tabela).
 
     create table tb_curso (		
		id bigint auto_increment,
        
        nome varchar (255) not null,
        preco decimal (8,2) not null,
        promocao boolean not null,
		tamanho_desconto varchar (255) not null,
        duração varchar (255) not null,
        categoria_id bigint,
        
        primary key (id),
		foreign key (categoria_id) REFERENCES tb_categoria (id)        
     );
     
     select *from tb_curso;
     
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Pacote Office",300,true,"5%","3 meses",1);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Montagem Computadores",300,true,"8%","3 meses",1);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Autocad2017",600,true,"10%","12 meses",2);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Inglês Básico",150,false,"N/A","12 meses",5);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Inglês Avançado",350,true,"20%","12 meses",5);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Alemão básico",300,false,"N/A","4 meses",3);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Alemão Avançado",650,false,"N/A","2 meses",3);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Curso de semijoias",100,true,"25%","6 meses",4);
    
    select * from tb_curso where preco > 50;
    
    select * from tb_curso where preco between 3 and 60;
    
    select * from tb_curso where nome like "%j%";
    
	-- Faça um um select com Inner join entre  tabela categoria e produto.
    select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

    -- Faça um select onde traga todos os Produtos de uma categoria específica 
    -- (exemplo todos os produtos que são cosméticos).
    
    select * from tb_curso where categoria_id = 5; -- Cursos de Inglês 