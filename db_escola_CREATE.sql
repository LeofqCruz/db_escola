drop table if exists Cidades, Alunos;

create table Cidades (
	id			int					primary key,
    nome		varchar(60)			not null,
    populacao	int					
);

create table Alunos	(
	id			int					primary key,
    nome		varchar(60)			not null,
    data_nasc	date,
    cidade_id	int,
    
    foreign key (cidade_id) references Cidades(id)
);

insert into Cidades values (1, "Arraial do Cabo", 20000);
insert into Cidades values (2, "Vitória", 150000);
insert into Cidades values (3, "Brotas", 27000);
insert into Cidades values (4, "Formiga", 35000);
insert into Cidades values (5, "Capão Bonito", 60000);

insert into Alunos values(1,"Amor", date'2000-01-01',5);
insert into Alunos values(2, "Baixinho", date'2000-01-01',4);
insert into Alunos values(3, "Coração", date'2000-01-01',2);
insert into Alunos values(4, "Dedinho", date'2000-01-01',4);
insert into Alunos values(5, "Escola", date'2000-01-01',1);
insert into Alunos values(6, "Feijão", date'2000-01-01',3);
insert into Alunos values(7, "Gente", date'2000-01-01',3);
insert into Alunos values(8, "Humano", date'2000-01-01',3);
insert into Alunos values(9, "Igualdade", date'2000-01-01',1);
insert into Alunos values(10, "Juventude", date'2000-01-01',5);
insert into Alunos values(11, "Liberdade", date'2000-01-01',5);
insert into Alunos values(12,"Molecagem", date'2000-01-01',2);
