insert into area values (area_SEQ.nextval, 'Computacao');
insert into area values (area_SEQ.nextval, 'Biologica');
insert into area values (area_SEQ.nextval, 'Juridica');
insert into area values (area_SEQ.nextval, 'Linguistica');

insert into curso values (curso_SEQ.nextval, 'Sistemas para Internet', 6, 'N', 1);
insert into curso values (curso_SEQ.nextval, 'Biologia', 8, 'M', 2);
insert into curso values (curso_SEQ.nextval, 'ADS', 6, 'M', 1);
insert into curso values (curso_SEQ.nextval, 'Medicina', 12, 'M', 2);
insert into curso values (curso_SEQ.nextval, 'Direito', 8, 'V', 3);
insert into curso values (curso_SEQ.nextval, 'Letras', 10, 'M', 4);

insert into disciplina values (disciplina_SEQ.nextval, 'SSI-1', 'BD1', 4, 2);
insert into disciplina values (disciplina_SEQ.nextval, 'SSI-2', 'BD2', 4, 2);
insert into disciplina values (disciplina_SEQ.nextval, 'SSI-3', 'SO1', 4, 2);
insert into disciplina values (disciplina_SEQ.nextval, 'MED-1', 'Anato 1', 6, 5);

insert into aluno values (aluno_SEQ.nextval, 'Bruno', TO_DATE('06/09/1988', 'dd/mm/yyyy'));
insert into aluno values (aluno_SEQ.nextval, 'Joao', TO_DATE('16/10/1977', 'dd/mm/yyyy'));
insert into aluno values (aluno_SEQ.nextval, 'Pedro', TO_DATE('09/02/1993', 'dd/mm/yyyy'));
insert into aluno values (aluno_SEQ.nextval, 'Maria', TO_DATE('01/04/1990', 'dd/mm/yyyy'));
insert into aluno values (aluno_SEQ.nextval, 'Gustavo', TO_DATE('25/12/1965', 'dd/mm/yyyy'));
insert into aluno values (aluno_SEQ.nextval, 'Renata', TO_DATE('03/03/1987', 'dd/mm/yyyy'));
insert into aluno values (aluno_SEQ.nextval, 'Amandah', TO_DATE('16/05/1997', 'dd/mm/yyyy'));
insert into aluno values (aluno_SEQ.nextval, 'Erico', TO_DATE('26/09/1956', 'dd/mm/yyyy'));
insert into aluno values (aluno_SEQ.nextval, 'Julia', TO_DATE('09/06/1992', 'dd/mm/yyyy'));
insert into aluno values (aluno_SEQ.nextval, 'Hanna', TO_DATE('27/11/1970', 'dd/mm/yyyy'));

insert into turma values (turma_SEQ.nextval, 1, 1, 3, 'N', 50);
insert into turma values (turma_SEQ.nextval, 2, 2, 1, 'M', 30);
insert into turma values (turma_SEQ.nextval, 1, 3, 2, 'N', 15);
insert into turma values (turma_SEQ.nextval, 3, 4, 6, 'M', 150);
insert into turma values (turma_SEQ.nextval, 4, 2, 8, 'V', 5);
insert into turma values (turma_SEQ.nextval, 1, 1, 9, 'M', 30);
insert into turma values (turma_SEQ.nextval, 4, 2, 2, 'N', 10);
insert into turma values (turma_SEQ.nextval, 4, 2, 5, 'N', 20);
insert into turma values (turma_SEQ.nextval, 1, 3, 4, 'V', 25);
insert into turma values (turma_SEQ.nextval, 3, 4, 1, 'M', 35);
insert into turma values (turma_SEQ.nextval, 2, 1, 1, 'V', 59);
insert into turma values (turma_SEQ.nextval, 1, 2, 4, 'N', 43);
insert into turma values (turma_SEQ.nextval, 1, 3, 5, 'M', 5);

insert into turma_aluno values(16, 1, 100);
insert into turma_aluno values(17, 2, 80);
insert into turma_aluno values(18, 1, 75);
insert into turma_aluno values(19, 4, 60);
insert into turma_aluno values(20, 5, 40);
insert into turma_aluno values(21, 8, 55);
insert into turma_aluno values(22, 10, 85);
insert into turma_aluno values(23, 9, 90);
insert into turma_aluno values(24, 3, 95);
insert into turma_aluno values(25, 5, 70);
insert into turma_aluno values(26, 6, 40);
insert into turma_aluno values(27, 9, 55);
insert into turma_aluno values(28, 10, 75);
insert into turma_aluno values(16, 2, 95);
insert into turma_aluno values(17, 7, 15);
insert into turma_aluno values(18, 3, 35);
insert into turma_aluno values(19, 8, 100);
insert into turma_aluno values(20, 3, 75);
insert into turma_aluno values(21, 5, 80);


insert into professor values (professor_SEQ.nextval, 'Tanisi', 6, 1);
insert into professor values (professor_SEQ.nextval, 'Joao', 4, 2);
insert into professor values (professor_SEQ.nextval, 'Jose', 8, 1);
insert into professor values (professor_SEQ.nextval, 'Maria', 12, 3);
insert into professor values (professor_SEQ.nextval, 'Fulano', 1, 4);
insert into professor values (professor_SEQ.nextval, 'Beltrano', 2, 2);
insert into professor values (professor_SEQ.nextval, 'Ciclano', 3, 1);

insert into aluno_curso values(1, 2, TO_DATE('01/01/2014', 'dd/mm/yyyy'), NULL, 'N');
insert into aluno_curso values(2, 7, TO_DATE('01/01/2015', 'dd/mm/yyyy'), NULL, 'M');
insert into aluno_curso values(3, 3, TO_DATE('01/01/2017', 'dd/mm/yyyy'), NULL, 'V');
insert into aluno_curso values(4, 5, TO_DATE('01/01/2011', 'dd/mm/yyyy'), TO_DATE('01/12/2015', 'dd/mm/yyyy'), 'M');
insert into aluno_curso values(5, 6, TO_DATE('01/07/2013', 'dd/mm/yyyy'), NULL, 'N');
insert into aluno_curso values(6, 3, TO_DATE('01/01/2014', 'dd/mm/yyyy'), NULL, 'M');
insert into aluno_curso values(7, 4, TO_DATE('01/07/2009', 'dd/mm/yyyy'), TO_DATE('01/07/2013', 'dd/mm/yyyy'), 'M');
insert into aluno_curso values(8, 6, TO_DATE('01/01/2013', 'dd/mm/yyyy'), TO_DATE('01/12/2017', 'dd/mm/yyyy'), 'V');
insert into aluno_curso values(9, 7, TO_DATE('01/01/2011', 'dd/mm/yyyy'), NULL, 'N');
insert into aluno_curso values(10, 5, TO_DATE('01/01/2011', 'dd/mm/yyyy'), TO_DATE('01/01/2017', 'dd/mm/yyyy'), 'M');

