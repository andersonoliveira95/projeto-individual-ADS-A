create database Revistas;
use Revistas;

create table revistas1 (
idRevista int primary key auto_increment,
nome varchar (40),
cataegoria varchar(40));
use Revista;
insert into revistas1 (nome) values 
('Veja'),
('Isto é'),
('Quatro Rodas'),
('Época');

select * from revistas1;

update revistas1 set cataegoria = 'Listas' where idRevista = 1;
update revistas1 set cataegoria = 'Noticias' where idRevista = 2;
update revistas1 set cataegoria = 'automobilistica' where idRevista = 3;
update revistas1 set cataegoria = 'Noticias' where idRevista = 4;

insert into revistas1 values 
( null,'Meridiano 47','cientifica'),
( null,'Exame PME','economia'),
(null,'PC Format','informatica');

select * from revistas1;

alter table revistas1 add column periodicidade varchar(15);

select periodicidade from revistas1 ;

alter table revistas1 drop column periodicidade ;

create table Editora (
idEditora int primary key auto_increment,
nomeEditora varchar (40),
dtaFund date);
alter table editora auto_increment= 1000;
select * from editora;

insert into Editora values
(null,'Alephe',19950625),
(null,'Saraiva',19940822),
(null,'FTD',19960522),
(null,'Escala',19980715);

alter table revistas1 add column fkEditora int;
alter table revistas1 add foreign key (fkEditora) references Editora(idEditora);

update revistas1 set fkEditora = 1000 where idRevista = 1;
update revistas1 set fkEditora = 1001 where idRevista = 2;
update revistas1 set fkEditora = 1002 where idRevista = 3;
update revistas1 set fkEditora = 1003 where idRevista = 4;
update revistas1 set fkEditora = 1003 where idRevista in (4,7);
update revistas1 set fkEditora =1001 where idRevista in (6,7);

select * from revistas1;


select * from  revistas1 inner join Editora on fkEditora = idEditora;

select * from  revistas1 inner join Editora on fkEditora = idEditora where nomeEditora = 'Saraiva';











