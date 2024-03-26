#3

delimiter $
create procedure listagem_alunos_contagem(out contagem_alunos int(10))
begin
	select count(cod_aluno) into contagem_alunos from tbl_alunos;
end
$

call listagem_alunos_contagem(@contagem_alunos);

select @contagem_alunos;


