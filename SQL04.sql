
/*Modificando linhas incorretas.*/
/*Alter modifica colunas. Update modifica linhas.*/
update cursos
set nome = 'HTML5'
where idcurso = '1';

/*Modificando dados de mais de uma coluna na mesma linha.*/
update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

/*O "limit 1" limita a alteração em apenas uma linha.*/
update cursos
set nome = 'Java', descricao = 'Introdução à Linguagem Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1;

/*Desabilitar o Safe Update do Workbench para alteração em massa.*/
update cursos
set ano = '2050', carga = '800'
where ano = '2018';

update cursos
set ano = '2018', carga = '0'
where ano = '2050'
limit 1;

/*Removendo a linha 8.*/
delete from cursos
where idcurso = '8';

/*Removendo apenas 2 linhas.*/
delete from cursos
where ano = '2050'
limit 2;

/*Removendo TODAS as linhas da tabela.*/
truncate cursos;