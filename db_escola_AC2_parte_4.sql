drop table if exists Animal;

create table Animal (
	id			int		primary key auto_increment,
    nome		varchar(60) not null,
    especie		varchar(60) not null,
    data_nasc	varchar(10) not null,
    peso		float not null,
    cor			varchar(30) not null
);

insert into Animal values (null, "Pateta","Cachorro", "25/12/2017", 24.5, "Caramelo" );
insert into Animal values (null, "Spice","Iguana", "25/12/2015", 4.3, "Preta" );
insert into Animal values (null, "Bolt","Dromedário", "25/12/2004", 350, "Caramelo" );
insert into Animal values (null, "Junior","Cachorro", "25/02/2017", 18, "Cinza" );
insert into Animal values (null, "Bisca","Vaca", "25/12/2002", 510, "Marrom" );
insert into Animal values (null, "Garfield","Gato", "25/12/2017", 6.4, "Preto" );
insert into Animal values (null, "Creusa","Tartaruga", "25/12/2017", 3.5, "Verde" );

set sql_safe_updates = 0;

update Animal set nome = "Goofy" where nome = "Pateta";
update Animal set peso = 10 where nome = "Garfield";
update Animal set cor = "Laranja" where especie = "Gato";
alter table Animal add altura decimal(5);
alter table Animal add observacao varchar(200);
delete from Animal where peso > 200;
delete from Animal where nome like "C%";
alter table Animal drop column cor;
alter table Animal modify nome varchar(80);
delete from Animal where especie = "Gato" or especie = "Cachorro";
alter table Animal drop column data_nasc;
delete from Animal;
drop table especie;

set sql_safe_updates = 1;