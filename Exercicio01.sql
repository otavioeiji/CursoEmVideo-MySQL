
/*EXERCICIOS*/

/*SELECIONAR TODAS AS MULHERES.*/
select * from gafanhotos
where sexo ='F';

/*TODOS QUE NASCERAM ENTRE 01/JAN/2000 E 31/DEZ/2015.*/
select * from gafanhotos
where nascimento  between '2000-01-01' and '2015-12-31'; 

/*TODOS OS HOMENS QUE TRABALHAM COMO PROGRAMADOR.*/
select * from gafanhotos
where sexo = 'M' and profissao = 'Programador';

/*MULHERES QUE NASCERAM NO BRASIL E TEM O SEU NOME INICIANDO COM A LETRA 'J'.*/
select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' 
				 and nome like 'J%';

/*NOME E NACIONALIDADE DE TODOS OS HOMENS QUE TENHAM 'SILVA' NO NOME, NÃO NASCERAM NO BRASIL E PESAM MENOS DE 100 Kg.*/
select nome, peso, nacionalidade from gafanhotos
where sexo = 'M' and nome like '%Silva%'
				 and nacionalidade != 'Brasil' 
                 and peso < '100'; 

/*MAIOR ALTURA ENTRE HOMENS QUE MORAM NO BRASIL.*/
select max(altura), sexo from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil';

/*MEDIA DE PESO DOS GAFANHOTOS.*/
select avg(peso) from gafanhotos;

/*MENOR PESO ENTRE AS MULHERES QUE NASCERAM FORA DO BRASIL E ENTRE 01/JAN/1990 E 31/DEZ/2000.*/
select min(peso), sexo from gafanhotos
where sexo = 'F' and nacionalidade != 'Brasil'
				 and nascimento between '1990-01-01' and '2000-12-31';
                           
/*QUANTAS MULHERES COM MAIS DE 1.90 M DE ALTURA.*/
select count(*) from gafanhotos
where sexo = 'F' and altura > '1.90';
 