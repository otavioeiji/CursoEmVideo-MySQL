
desc gafanhotos;

/*Adicionando uma nova coluna para a chave estrangeira.*/
alter table gafanhotos
add column cursopreferido int;

/*Adicionando a chave estrangeira da tabela cursos.*/
alter table gafanhotos
add foreign key(cursopreferido)
references cursos(idcurso); /*Referenciando a tabela cursos e sua chave primária.*/

select * from gafanhotos; 
select * from cursos;

delete from cursos
where idcurso = '6';

/*Usando junções "join" para mostrar o resultado de duas tabelas.*/
select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos inner join cursos /*Join junta as duas tabelas. O "inner" é opcional.*/
on cursos.idcurso = gafanhotos.cursopreferido /*Igualar as relações(chave primária da tabela cursos com a chave estrangeira da tabela gafanhotos).*/
order by gafanhotos.nome;

/*Usando apelidos nas tabelas com "as". Encurta o cógido e o resultado é o mesmo.*/
select g.nome, c.nome, c.ano
from gafanhotos as g inner join cursos as c /*Join junta as duas tabelas. O "inner" é opcional.*/
on c.idcurso = g.cursopreferido /*Igualar as relações(chave primária da tabela cursos com a chave estrangeira da tabela gafanhotos).*/
order by g.nome;

/*Usando o "left e o right outer join".*/
select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c /*O left outer join ou simplesmente left join mostra inclusive as pessoas que não tem relação com nenhum curso, dando preferência para a tabela gafanhotos.*/
on c.idcurso = g.cursopreferido;

select g.nome, c.nome, c.ano
from gafanhotos as g right join cursos as c /*O right outer join ou simplesmente right join mostra inclusive as pessoas que não tem relação com nenhum curso, dando preferência para a tabela cursos.*/
on c.idcurso = g.cursopreferido;


