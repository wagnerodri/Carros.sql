create database Carro;

drop database Carro;

use Carro;

create table if not exists Cliente (CPF int(11) not null  primary key ,
                                   nome varchar (25) not null ,
                                   numConta int (10) not null,
                                   telefone int (9),
                                   cidade varchar (20));
                                   
create table if not exists Carro(CHASSI varchar(11) not null primary key ,
								 modelo varchar (10) not null,
                                 cor varchar (20) not null,
                                 ano int (10) not null,
                                 valor int (10));
                                 
alter table Cliente
add foreign key (CPF)
references Carro(Chassi);                            
							
SET FOREIGN_KEY_CHECKS = 0;            

insert into Cliente (CPF , nome , numConta , telefone , cidade)
values (21111 ,'Ana' ,2317, 019 , 'Campinas'),
(21222, 'Fabio' , 1711 ,011, 'Jundai'),
(121111, 'Maria' ,7121, 011, 'Sao Paulo'),
(321222, 'Flavio', 2211, 019, 'Campinas'),
(123111, 'Fernado', 1123,021, 'Rio de Janeiro'),
(217222, 'Marta', 3111, 031 , 'Belo Horizonte');
                
insert into Carro(CHASSI , modelo , cor , ano , valor)
values ('A21', 'Uno', 'Prata', 2003 , 10000),
	   ('2AC', 'Gol', 'Preto' , 2004, 12000),
       ('33A', 'Corsa','Branco', 2005, 8000),
       ('12C', 'Uno', 'Verde', 2001, 7000),
       ('1C3', 'Astra','Prata', 2005, 1500),
       ('22A', 'Gol', 'Prata' ,2005, 9000);                


select* from Cliente;
select* from Carro;



select valor , cor , ano , Chassi , modelo from Carro;

update Cliente
set telefone = 019 ;

update Cliente
set nome = 'Andre'
 where nome = 'Ana';
 
 update Cliente
 set cidade = 'Brasilia'
  where  numConta  >2000;


