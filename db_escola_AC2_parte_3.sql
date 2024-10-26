select nome as "Nome", data_nasc as "Data de Nascimento" from Alunos;

-- Retorna apenas os registros que têm correspondências em ambas as tabelas.
select * from Alunos inner join Cidades on Cidades.id = Alunos.cidade_id;

select 
-- Em SQL, um "alias" é um nome temporário ou alternativo atribuído a uma tabela ou a uma coluna de tabela, a fim de tornar uma consulta mais legível ou para evitar conflitos de nomeação
	A.id as "RA",
    A.nome as "Nome",
    A.data_nasc as "Nascimento",
    C.nome as "Cidade"
from
-- Retorna todos os registros da tabela à esquerda (tabela principal) e os registros correspondentes da tabela à direita (ou NULL se não houver correspondência).
	Alunos A left join
    Cidades C
		on A.cidade_id = C.id
where
	C.nome like 'Arr%' and
    A.data_nasc > 10000
order by 
	A.nome;