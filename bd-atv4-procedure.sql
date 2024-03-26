#1

delimiter $
create procedure listagem_alunos_dados()
begin
	select  
		tt.sigla_turma, tt.nome_turma,
		ta.nome_aluno, ta.telefone_aluno, ta.telefone_responsavel, ta.email, ta.data_nascimento
	from tbl_alunos as ta
	inner join tbl_turma as tt
	on ta.cod_turma = tt.cod_turma;
end
$

call listagem_alunos_dados();
