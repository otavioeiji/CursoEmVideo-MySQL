
/*Criando mais uma Tabela.*/
/*Adicione o "if not exists" para não correr o risco de substituir uma tabela existente.*/
create table if not exists cursos (
nome varchar(30)not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
)default charset = utf8;

desc cursos;
 
/*Adicionando outra coluna.*/
alter table cursos
add column idcurso int first;

/*Adicionando a chave primária.*/
alter table cursos
add primary key(idcurso);

create table if not exists teste (
id int,
nome varchar(10),
idade int
);

insert into teste values
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');

select * from teste;

/*Apagando uma Tabela.*/
drop table if exists teste;

/*Inserindo dados na tabela gafanhotos.*/
insert into gafanhotos 
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Maria', '1999-12-30', 'F', '55.2', '1.65', 'Portugal'),
('Creuza', '1920-12-30', 'F', '50.2', '1.65', default),
('Adalgiza', '1930-11-02', 'F', '63.2', '1.75', 'Irlanda'),
('Cláudio', '1975-04-22', 'M', '99', '2.15', default),
('Pedro', '1999-12-03', 'M', '87', '2', default),
('Janaína', '1987-11-12', 'F', '75.4', '1.66', 'EUA');

select * from gafanhotos;

/*Inserindo dados na tabela cursos.*/
insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linugagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Bancos de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Ritmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

select * from cursos;