alter table funcionario ADD id_gerente number;
update funcionario set id_gerente=3 where id_funcionario in (1,2);

-- Utilizando IN para buscar todos os gerentes
select * from funcionario f 
where f.id_funcionario in 
(select id_gerente from funcionario where id_gerente is not null);

-- Utilizando EXISTS para buscar todos os gerentes
select * from funcionario f 
where exists (select id_gerente from funcionario fu where f.id_funcionario = fu.id_funcionario and id_gerente is null);

-- A query teve que ser mudada completamente, pois se utilizada a mesma query usada para IN,
--seriam retornados todos os registros ja que existem funcionarios onde o id_gerente nao e nulo

--Utilizando IN para buscar todos os funcionarios que nao sao gerentes
select * from funcionario f
where f.id_gerente in 
(select id_gerente from funcionario where id_gerente is not null);

--Utilizando EXISTS para buscar todos os funcionarios que nao sao gerentes
select * from funcionario f 
where exists (select id_gerente from funcionario fu where f.id_funcionario = fu.id_funcionario and id_gerente is not null);

--Novamente, a query foi modificada para que nao retorne todos os funcionarios
