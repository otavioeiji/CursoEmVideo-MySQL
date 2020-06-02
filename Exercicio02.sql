
/*EXERCICIOS*/

/*LISTA COM AS PROFISSOES DOS GAFANHOTOS E SEUS REPESCTIVOS QUANTITATIVOS.*/
select profissao, count(*) from gafanhotos
group by profissao;

/*QUANTOS GAFANHOTOS HOMENS E MULHERES NASCERAM APÓS 01/JAN/2005.*/
select  sexo, count(*) from gafanhotos
where nascimento > '2000-01-01'
group by sexo;

/*LISTA COM OS GAFANHOTOS QUE NASCERAM FORA DO BRASIL. MOSTRANDO O PAÍS DE ORIGEM E O TOTAL DE PESSOAS NASCIDAS LÁ. 
SÓ NOS INTERESSAM OS PAÍSES QUE TIVERAM MAIS DE 3 GAFANHOTOS COM ESSA NACIONALIDADE.*/
select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(nacionalidade) > '3';

/*MÉDIA DE ALTURA DE TODOS OS GAFANHOTOS.*/
select avg(altura) from gafanhotos;

/*LISTA AGRUPADA PELA ALTURA  DOS GAFANHOTOS, MOSTRANDO QUANTAS PESSOAS PESAM MAIS DE 100 KG
E QUE ESTÃO ACIMA DA MÉDIA DE ALTURA DE TODOS OS CADASTRADOS.*/
select altura, count(*) from gafanhotos
where peso > 100 
group by altura
having altura > (select avg(altura) from gafanhotos);





