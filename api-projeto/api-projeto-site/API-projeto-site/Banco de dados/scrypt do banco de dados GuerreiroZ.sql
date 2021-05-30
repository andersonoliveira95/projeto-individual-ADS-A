create database GuerreiroZ;

use GuerreiroZ;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
    dataNasc date,
	login VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE publicacao (
	id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(100),
	fkUsuario INT
);


alter table publicacao add foreign key (fkUsuario) references usuario (id);


select * from usuario join publicacao on  fkUsuario = usuario.id;

select count(descricao) from publicacao group by fkUsuario;

select nome, dataNasc, login, descricao from usuario join publicacao on fkUsuario = usuario.id;


