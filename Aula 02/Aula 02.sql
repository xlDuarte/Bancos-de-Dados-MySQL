create database db_beco39;
use db_beco39;

create database db_teste;
drop database db_teste;

create table tb_cliente(
id_cliente bigint auto_increment,
nome varchar(255),
email varchar(255),
senha varchar(255),
primary key(id_cliente)
);

select * from db_beco39.tb_cliente;

insert into `db_beco39`.`tb_cliente` (`nome`, `email`, `senha`) values ('yuri', 'yuri@yuri', '123');
insert into `db_beco39`.`tb_cliente` (`nome`, `email`, `senha`) values ('larissa', 'larissa@larissa', '123');
insert into `db_beco39`.`tb_cliente` (`nome`, `email`, `senha`) values ('cezar', 'cezar@cezar', '123');

update `db_beco39`.tb_cliente set `senha` = '444' where (`id_cliente` = '2');

alter table tb_cliente add idade int;

select * from tb_cliente