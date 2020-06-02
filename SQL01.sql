
/*Criando o Banco de Dados.*/
create database cadastro
default character set utf8
default collate utf8_general_ci;

/*Criando a Tabela.*/
create table pessoas(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M', 'F'),
peso decimal(5, 2),
altura decimal(3, 2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
)default charset = utf8;

/*Abrindo o Banco de Dados.*/
use cadastro;

/*Descrição da Tabela.*/
desc pessoas;

/*Inserindo dados na Tabela.*/
insert into pessoas 
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

/*Visualizando toda a tabela.*/
select * from pessoas;












  
