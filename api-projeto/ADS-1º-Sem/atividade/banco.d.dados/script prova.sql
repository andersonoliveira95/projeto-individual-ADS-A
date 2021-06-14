create database ac2Anderson ;
use ac2Anderson;

create table PontoVacinacao (
idPontoVacinacao int primary key auto_increment,
tipoLocal varchar (10),
check (tipoLocal = 'posto' or tipoLocal = 'hospital'),
cidade varchar(40),
bairro varchar(40),
logradouro varchar(40),
complemento varchar(20),
telefone varchar (15)
);

insert into PontoVacinacao values
(null,'posto','itaquaquecetuba','jd Paineira','serra formosa','555','(11)91111-1111'),
(null,'posto','itaquaquecetuba','jd caiuby','serra mar','555','(11)91111-2222'),
(null,'hospital','itaquaquecetuba','centro','serra da mantiqueira','777','(11)91111-2222'),
(null,'hospital','itaquaquecetuba','km 40','ibuna','333','(11)91111-2222');
select * from PontoVacinacao;




create table Agendamento (
idAgendamento int primary key auto_increment,
fkPontovacina int,
foreign key (fkPontovacina) references PontoVacinacao (idPontoVacinacao),
nomePaciente varchar(40),
sobrenomePaciente varchar(40),
sexo char(1),
check (sexo = 'm' or sexo = 'f'),
dataNascimento date,
dataAgendamento date,
horarioAgendamento time
) auto_increment = 100;


insert into Agendamento values
(null,1,'João','Silva','m','1970-05-23','2021-05-10','13:40:00'),
(null,1,'Marcia','Gomes','f','1982-08-17','2021-05-10','14:30:00'),
(null,2,'Pedro','Oliveira','m','1988-02-25','2021-05-18','10:20:00'),
(null,2,'Felipe','Braga','m','1985-04-28','2021-05-18','11:00:00'),
(null,3,'Maria','Souza','f','1979-11-30','2021-04-28','14:40:00'),
(null,3,'Bruno','Santos','m','1985-09-20','2021-04-28','15:15:00'),
(null,4,'Claudia','Ferreira','f','1986-03-15','2021-05-19','11:20:00'),
(null,4,'Genival','Aparecido','m','1991-07-03','2021-05-19','11:40:00');
select * from Agendamento;

alter table Agendamento modify nomePaciente varchar (35);
describe Agendamento;


select * from PontoVacinacao inner join Agendamento on idPontoVacinacao = fkPontovacina;
select * from PontoVacinacao inner join Agendamento on idPontoVacinacao = fkPontovacina where sexo = 'f';



select count(idAgendamento)as quant_Agendamento from Agendamento where sexo ='f';









