
/*Alterando dados da Tabela.*/
alter table pessoas
add column profissao varchar(10); 

/*Removendo uma coluna.*/
alter table pessoas
drop column profissao;

/*Adicionando uma coluna em uma determinada posição.*/
alter table pessoas
add column profissao varchar(10) after nome;

/*Adicionando uma coluna na primeira posição.*/
alter table pessoas
add codigo int first; /*A palavra "column" é opcional.*/

/*Modificando a Estrutura da Tabela.*/
alter table pessoas
modify column profissao varchar(20);

/*Modificando o nome da coluna.*/
alter table pessoas
change column profissao prof varchar(20);

/*Modificando o nome da Tabela.*/
alter table pessoas
rename to gafanhotos;

desc gafanhotos;

/*Removendo a colona código.*/
alter table gafanhotos
drop column codigo;