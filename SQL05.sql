
select * from cursos;

/*Ordena a tabela pelo nome usando "order by".*/
select * from cursos
order by nome;

/*Ordenar a tabela pelo ano mostrando colunas específicas.*/
select ano, nome, carga from cursos
order by ano;

/*Filtrar linhas da tabela.*/
select * from cursos
where ano = '2016'
order by nome;

/*Filtrar linhas e colunas específicas da tabela.*/
select nome, descricao, carga from cursos
where ano = '2016'
order by nome;

select nome, descricao, ano from cursos
where ano <= '2015'
order by ano, nome;

/*Filtrar linhas e colunas entre uma coisa e outra usando "between" ordenando pelo ano decrescente e nome crescente.*/
select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome;

/*Filtrar linhas e colunas atavés de valores específicos usando "in).*/
select nome, descricao, ano from cursos
where ano in (2014, 2016, 2020)
order by ano;

/*Filtrar linhas e colunas combinando operadores relacionais e lógicos.*/
select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30;


