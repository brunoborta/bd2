3.	Criar uma procedure utilizando cursores que apresenta na tela os nomes dos alunos que estão cursando uma determinada disciplina em um semestre (estas duas informações são parâmetros de entrada:nome da disciplina e semestre).
4.	Criar uma procedure que recebe o id_curso e retorna em um parâmetro o nome do curso. Utilizar INTO e exception para testar se nenhum curso foi encontrado com aquele código.
5.	Fazer uma função de retorna o número de linhas deletadas da tabela turma_aluno (o parâmetro de entrada é o id_turma e id_aluno que deve ser do tipo <tablela>%type).
6.	Alterar a tabela professor e adicionar a coluna status (ativo,  afastado). Criar uma trigger que não permita que um professor seja alocado para uma turma se ele estiver afastado.
7.	 Criar uma função que apresenta a quantidade de alunos de um determinado curso
8.	Criar uma função que apresenta o total de disciplinas em que um aluno está matriculado em um determinado semestre.

1) Criar uma procedure que insere dados na tabela turma.
CREATE OR REPLACE PROCEDURE p_insere_turma IS 

BEGIN
	insert into turma values(turma_SEQ.nextval, 1,2,1,'N', 20);
END;
/
show errors;


2) Criar uma procedure com três parâmetros de entrada (IN) id_desciplina, id_aluno, semestre e que retorna em um parâmetro de saída media_final na tabela turma_aluno.
CREATE OR REPLACE PROCEDURE p_retorna_media(v_disc IN turma.id_disciplina%type, v_aluno IN aluno.id_aluno%type, v_sem IN turma.semestre%type, v_media OUT turma_aluno.media_final%type) IS
BEGIN
select media_final
into v_media
from turma_aluno ta
inner join turma t on ta.id_turma = t.id_turma
where t.id_disciplina = v_disc
and t.semestre = v_sem
and ta.id_aluno = v_aluno;

END;
/
show errors;

3) Criar uma procedure utilizando cursores que apresenta na tela os nomes dos alunos que estão cursando uma determinada disciplina em um semestre (estas duas informações são parâmetros de entrada:nome da disciplina e semestre).
nome_disc = BD1, semestre = 4
CREATE OR REPLACE PROCEDURE p_nome_aluno(v_nome IN disciplina.nome_disciplina%type, v_sem IN turma.semestre%type) IS

CURSOR c1 IS
select a.nome_aluno as nome from disciplina d
inner join turma t on d.id_disciplina = t.id_disciplina
inner join turma_aluno ta on t.id_turma = ta.id_turma
inner join aluno a on ta.id_aluno = a.id_aluno
where t.semestre = v_sem
and d.nome_disciplina = v_nome;

begin

for res in c1 LOOP
DBMS_OUTPUT.PUT_LINE(res.nome);
end LOOP;
END;
/
show errors;

4) Criar uma procedure que recebe o id_curso e retorna em um parâmetro o nome do curso. Utilizar INTO e exception para testar se nenhum curso foi encontrado com aquele código.
CREATE OR REPLACE PROCEDURE p_nome_curso (v_id IN curso.id_curso%type) IS
v_nome VARCHAR(15);
begin
select nome_curso
into v_nome
from curso
where id_curso = v_id;
DBMS_OUTPUT.PUT_LINE(v_nome);

EXCEPTION
WHEN no_data_found THEN
raise_application_error(-20001, 'Curso nao existe!');
end;
/
show errors;
