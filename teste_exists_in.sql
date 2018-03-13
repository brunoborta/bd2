alter table funcionario ADD id_gerente number;
update funcionario set id_gerente=3 where id_funcionario in (1,2);