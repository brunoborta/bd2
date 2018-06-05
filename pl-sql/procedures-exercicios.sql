1)
CREATE OR REPLACE PROCEDURE p_insere_turma IS 

BEGIN
	insert into turma values(turma_SEQ.nextval, 1,2,1,'N', 20);
END;
/
show errors;

2) INCOMPLETO
CREATE OR REPLACE PROCEDURE p_retorna_media (v_disc IN disciplina.id_desciplina%type, v_aluno IN aluno.id_aluno%type, v_sem IN turma.semestre%type)

insert into turma_aluno values(1, 1, 100);