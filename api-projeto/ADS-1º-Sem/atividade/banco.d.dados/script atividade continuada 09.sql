use exercicio11;

create database Exercicio11;
use Exercicio11;

create table Departamento (
idDepto int primary key,
nomeDepto varchar(50),
fkGerente int,
dataInicioGer date
);
alter table Departamento add foreign key (fkGerente) references Funcionario (idFunc);

insert into Departamento values
(105,'pesquisa',2,'2008-05-22'),
(104,'Adiministração',7,'2015-01-01'),
(101,'Matriz',8,'2001-06-19');
select * from Departamento;


create table Funcionario (
idFunc int primary key,
nomeFunc varchar(30),
salario double,
sexo char(1),
check (sexo = 'm' or sexo = 'f'),
fkSupervisor int,
dataNasc date,
fkDepto  int);
alter table Funcionario add foreign key (fkSupervisor) references Funcionario (idFunc);
alter table Funcionario add foreign key (fkDepto) references Departamento (idDepto);

insert into Funcionario values 
(1,'Joao Silva',3500,'m',2,'1985-01-09',105),
(2,'Fernando Wong',4500,'m',8,'1975-12-08',105),
(3,'Alice Souza',2500,'f',7,'1988-01-19',104),
(4,'Janice Morais',4300,'f',8,'1970-06-20',104),
(5,'Ronaldo Lima',3800,'m',1,'1982-09-15',105),
(6,'Joice Leite',2500,'f',1,'1992-07-31',105),
(7,'Antonio Pereira',2500,'m',4,'1989-03-29',104),
(8,'Juliano Brito',5500,'m',null,'1957-09-10',101);
select * from Funcionario;

create table Projeto (
idProj int primary key,
nomeProj varchar(40),
localProj varchar(40),
fkDepto int
);
alter table Projeto add foreign key (fkDepto) references Departamento (idDepto);

insert into Projeto values 
(1,'ProdutoX','Santo André',105),
(2,'ProdutoY','Itu',105),
(3,'ProdutoZ','São Paulo',105),
(10,'informatização','Mauá',104),
(20,'Reorganização','São Paulo',101),
(30,'Benefício','Mauá',104);
select * from Projeto;


create table FuncProj (
fkFunc int,
foreign key (fkFunc) references Funcionario (idFunc),
fkProj int,
foreign key (fkProj) references Projeto (idProj),
horas decimal(3,1),
primary key (fkProj,fkFunc)
);

insert into FuncProj values
(1,1,32.5),(1,2,7.5),
(5,3,40.0),
(6,1,20.0),(6,2,20.0),
(2,2,10.0),(2,3,10.0),(2,10,10.0), (2,20,10.0),
(3,30,30.0),(3,10,10.0),
(7,10,35.0),(7,30,5.0),
(4,30,20.0),(4,20,15.0),
(8,20,null);
select * from FuncProj;

insert into Funcionario values
(9,'Célia Ribeiro',2800,'f',4,'1980-04-05',104);


delete from Funcionario where idFunc = 4;

delete from Funcionario where idFunc = 2;

update Funcionario set salario =2800  where idFunc = 3;

update Funcionario set fkDepto = 101  where idFunc = 3;

update Funcionario set fkDepto = 107  where idFunc = 3;

select salario from Funcionario;

select distinct salario from Funcionario;

select * from Funcionario order by nomeFunc;

select * from Funcionario where salario between 2000 and 4000;

select nomeFunc, salario from Funcionario where nomeFunc like 'j%';

select nomeFunc, salario from Funcionario where nomeFunc like '%a';

select nomeFunc from Funcionario where nomeFunc like '__n%';

select nomeFunc, dataNasc from Funcionario where nomeFunc like '%s____';

select * from Funcionario where fkDepto = 105;
select * from Funcionario inner join Departamento on fkDepto = idDepto where nomeDepto = 'Pesquisa';

select * from Funcionario where fkDepto = 105 and salario > 3500;
select * from Funcionario inner join Departamento on fkDepto = idDepto where nomeDepto = 'Pesquisa' and salario >3500;

select * from Funcionario where fkDepto = 105 and nomeFunc like 'j%';
select * from Funcionario inner join Departamento on fkDepto = idDepto where nomeDepto = 'Pesquisa' and nomeFunc like 'j%';


select Projeto.idProj,Projeto.fkDepto as numDepto,Funcionario.nomeFunc as Gerente,Funcionario.dataNasc from
 Projeto inner join Departamento on fkDepto = idDepto inner join Funcionario 
 on Departamento.fkGerente = Funcionario.idFunc where Projeto.localProj = 'São Paulo';
 
 select Funcionario.idFunc, Funcionario.nomeFunc,Projeto.idProj,Projeto.nomeProj,FuncProj.horas 
 from FuncProj inner join Funcionario on FuncProj.fkFunc = Funcionario.idFunc
 inner join Projeto on FuncProj.fkProj = idProj;


select nomeFunc from Funcionario where dataNasc < '1980-00-00';

select count(distinct salario) from Funcionario;

select count(distinct localProj) from Projeto;

select avg(salario), sum(salario) from Funcionario;

select max(salario), min(salario) from Funcionario;

select Departamento.idDepto, avg(salario), sum(salario) from Funcionario inner join 
Departamento on Funcionario.fkDepto = Departamento.idDepto group by Departamento.nomeDepto;

select Departamento.idDepto, min(salario), max(salario) from Funcionario inner join 
Departamento on Funcionario.fkDepto = Departamento.idDepto group by Departamento.nomeDepto;

insert into Funcionario values 
(10,'José da Silva',1800,'m',3,'2000-10-12',null),
(11,'Benedito Almeida',1200,'m',5,'2001-09-01',null);
select * from Funcionario;

insert into Departamento values
(110,'RH',3,'2018-11-10');
select * from Departamento;



























