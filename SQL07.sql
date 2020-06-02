
select * from gafanhotos;

/*Agrupando dados repetidos usando "group by" e visualizando a quantidade de cada grupo.*/
select carga, count(*) from cursos
group by carga;

/*Agrupando e agregando dados usando "having". A descrição de coluna de ambos tem que ser igual. Neste exemplo foi "ano".*/
select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count(*) desc;

/*Select dentro de outro select. Mostrando apenas a média acima da média de todos os cursos.*/
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);


