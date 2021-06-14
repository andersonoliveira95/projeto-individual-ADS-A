use sprint2;

CREATE TABLE Musica (
idMusica int primary key auto_increment,
 titulo varchar(40),
 artista varchar(40),
 genero varchar(40));
INSERT INTO Musica VALUES 
(null, 'Rap do trem','RZO', 'Rap'),
(null, 'Jesus Chorou','Racionais MCs','Rap'),
(null,'True Love','SOJA','reggae'),
(null,'Shee Still Loves Me','SOJA','reggae'),
(null,'Algo Novo','Kemuel','Gospel'),
(null,'Você Não Vai Parar','Samuel Messias','Gospel'),
(null,'Auto-Reverse','O Rappa','Reggae'), 
(null,'Artigo 157','Biel & Tatá','sertanejo');

select * from Musica;

create table Album (
idAlbum int primary key auto_increment,
nomeAlbum varchar (30),
gravadora varchar (30));
alter table Album auto_increment = 100; 

insert into Album values 
(null, 'Todos são Mano','Cosa Nostra Fonográfica'),
(null,'Holocausto urbano','Zimbabwe Records'),
(null,'The Truth About Love','Columbia'),
(null,'Strength To Survive',' ATO Records'),
(null,'Algo Novo','MK Music'),
(null,' Planos de Deus','MK Music'),
(null,'nunca tem fim','Warner Music Brasil');

select * from Album;

alter table Musica add column fkAlbum int;
alter table Musica add foreign key (fkAlbum) references Album (idAlbum);

update Musica set fkAlbum = 100 where idMusica in (1,8);
update Musica set fkAlbum = 101 where idMusica = 2;
update Musica set fkAlbum = 102 where idMusica = 3;
update Musica set fkAlbum = 103 where idMusica = 4;
update Musica set fkAlbum = 104 where idMusica = 5;
update Musica set fkAlbum = 105 where idMusica = 6;
update Musica set fkAlbum = 106 where idMusica = 7;

select * from Musica inner join Album on fkAlbum = idAlbum;
select * from Musica inner join Album on fkAlbum = idAlbum where nomeAlbum = 'Todos são Mano';
select * from Musica inner join Album on fkAlbum = idAlbum where gravadora = 'MK Music';









