
/*Criando uma nova tabela para fazer um relacionamento de muitos para muitos.*/
create table gafanhoto_assiste_curso (
id int not null auto_increment,
data date,
idgafanhoto int, 
idcurso int,
primary key(id),
foreign key(idgafanhoto) references gafanhotos(id),
foreign key(idcurso) references cursos(idcurso)
) default charset = utf8;

desc gafanhoto_assiste_curso;

/*Inserindo dados na tabela.*/
insert into gafanhoto_assiste_curso values
(default, '2014-03-01', '1', '2'),
(default, '2015-12-22', '3', '6'),
(default, '2014-01-01', '22', '12'),
(default, '2016-05-12', '1', '19');

select * from gafanhoto_assiste_curso;

/*Mostrando o nome das pessoas da tabela gafanhotos e o idcurso da tabela gafanhoto_assiste_curso.*/
select g.nome, a.idcurso from gafanhotos g
join gafanhoto_assiste_curso a 
on g.id = a.idgafanhoto
order by g.nome;

/*Mostrando o nome das pessoas da tabela gafanhotos, o idcurso da tabela gafanhoto_assiste_curso e o nome do curso da tabela cursos.*/
select g.nome, a.idcurso, c.nome from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c 
on c.idcurso = a.idcurso
order by g.nome;



