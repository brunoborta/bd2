create table area 
(id_area NUMBER constraint PK_area PRIMARY KEY, 
nome varchar2(30)
);

create table curso 
(id_curso NUMBER constraint PK_curso PRIMARY KEY,
nome_curso varchar2(15),
n_semestres NUMBER,
turno varchar2(15),
id_area NUMBER
);

create table disciplina
(id_disciplina NUMBER constraint PK_disciplina PRIMARY KEY,
codigo varchar2(10),
nome_disciplina varchar2(30),
n_creditos NUMBER,
id_curso NUMBER
);

create table aluno
(id_aluno NUMBER constraint PK_aluno PRIMARY KEY,
nome_aluno varchar2(30),
data_nascimento DATE
);

create table professor
(id_professor NUMBER constraint PK_professor PRIMARY KEY,
nome_professor varchar2(30),
n_horas NUMBER,
id_area NUMBER
);

create table turma
(id_turma NUMBER constraint PK_turma PRIMARY KEY,
id_disciplina NUMBER,
id_professor NUMBER,
semestre NUMBER,
turno varchar2(15),
max_alunos NUMBER
);

create table turma_aluno
(id_turma NUMBER,
id_aluno NUMBER,
media_final NUMBER,
CONSTRAINT PK_turma_aluno PRIMARY KEY (id_turma, id_aluno)
);

create table aluno_curso (
id_aluno NUMBER,
id_curso NUMBER,
data_inicio DATE,
data_fim DATE,
turno varchar2(15),
CONSTRAINT PK_aluno_curso PRIMARY KEY (id_aluno, id_curso)
);

create sequence area_SEQ
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
nocache;

create sequence curso_SEQ
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
nocache;

create sequence disciplina_SEQ
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
nocache;

create sequence aluno_SEQ
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
nocache;

create sequence professor_SEQ
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
nocache;

create sequence turma_SEQ
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
nocache;

alter table curso add constraint FK_curso FOREIGN KEY (id_area) references area;
alter table disciplina add constraint FK_disciplina FOREIGN KEY (id_curso) references curso;
alter table professor add constraint FK_professor FOREIGN KEY (id_area) references area;
alter table turma add constraint FK_turma_disciplina FOREIGN KEY (id_disciplina) references disciplina;
alter table turma add constraint FK_turma_professor FOREIGN KEY (id_professor) references professor;

alter table turma_aluno add constraint FK_turma_aluno_turma FOREIGN KEY (id_turma) references turma;
alter table turma_aluno add constraint FK_turma_aluno_aluno FOREIGN KEY (id_aluno) references aluno;

alter table aluno_curso add constraint FK_aluno_curso_aluno FOREIGN KEY (id_aluno) references aluno;
alter table aluno_curso add constraint FK_aluno_curso_curso FOREIGN KEY (id_curso) references curso;