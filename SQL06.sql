
select * from cursos;

/*Usando o operador "like". Resulta nos nomes dos cursos que começam com a letra P.*/
select * from cursos
where nome like 'P%'; /* "%" significa nenhum ou qualquer coisa.*/

/*Usando o operador "like". Resulta nos nomes dos cursos que terminam com a letra A.*/
select * from cursos
where nome like '%A';

/*Usando o operador "like". Resulta nos nomes dos cursos que contém a letra A em qualquer lugar.*/
select * from cursos
where nome like '%A%';

/*Usando o operador " not like". Resulta nos nomes dos cursos que não contém a letra A em lugar nenhum.*/
select * from cursos
where nome not like '%A%';

/*Resulta nos nomes dos cursos que começam com as letras PH e terminam com a letra P.*/
select * from cursos
where nome like 'PH%P';

/*Resulta no nome dos gafanhotos que contém Silva em qualquer lugar.*/ 
select * from gafanhotos
where nome like '%Silva%';

/*Distinguindo dados repetidos, mostrando apenas uma vez o valor. Neste caso, a nacionalidade.*/
select distinct nacionalidade from gafanhotos
order by nacionalidade;

select distinct carga from cursos
order by carga;

/*Funções de agrupamento usando "count". Mostra o total de cursos.*/
select count(*) from cursos;

/*Mostra o total de cursos com carga maior que 40.*/
select count(*) from cursos
where carga > 40;

/*Funções de agrupamento usando "max". Mostra o máximo(maior valor) de um dado.*/
select max(carga) from cursos;

/*Mostra o máximo total de aulas dos cursos do ano de 2016.*/
select max(totaulas) from cursos
where ano = '2016';

/*Usando o "min". Mostra o mínimo total de aulas dos cursos do ano de 2016.*/
select min(totaulas) from cursos
where ano = '2016';

/*Usando o "sum". Mostra a soma do total de aulas dos cursos do ano de 2016.*/
select sum(totaulas) from cursos
where ano = '2016';

/*Usando o "avg". Mostra a média do total de aulas dos cursos.*/
select avg(totaulas) from cursos; 











