-- Calculo da media de itens vendidos por nome item em cada local_venda
select
avg(cni.count), cni.nome
from(
    select
        Count(*) as count,
        i.nome as nome
        ,   l.id_local
	from smart_home.compras C,
	     smart_home.itens I,
	     smart_home.local_venda l
	where c.codigo_de_barra = i.codigo_de_barra and
	c.id_local = l.id_local
Group by i.nome, l.id_local, i.nome) as cni
Group by cni.nome;

-- Valor de contas_pagar por quantidade de moradores nas casas

select  SUM(CP.valor_cont_pagar) as Contas_Pagar_Total,
        COUNT(M.id_morador) as Morador_Total,
        c.id_casa as casa
from
    smart_home.pagamentos P,
    smart_home.contas_pagar CP,
    smart_home.moradores M,
    smart_home.casas C
where P.id_cont_pagar = CP.id_cont_pagar
    and P.id_morador = M.id_morador
    and C.id_casa = M.id_casa
group by C.id_casa;

-- Numero de tarefas concluidas agrupadas por casas ordenadas pelos respectivos responsaveis.

explain select count(T.id_tarefa) TAREFAS_CONCLUIDAS
from smart_home.tarefas T, smart_home.casas C,smart_home.responsaveis R
where T.id_casa = C.id_casa
and lower(T.Status) like lower('%FEITO%')
and C.id_responsaveis = R.id_responsaveis
Group by R.nome;

--Instrumentos disponiveis para uso, utilizados em tarefas concluidas

select count(U.id_instrumento) as Instrumentos_Disponiveis
from Instrumentos I, Tarefa T, Utiliza U
where T.Status = ‘CONCLUIDA’
and U.id_tarefa = T.id_tarefa
and U.id_instrumento = I.id_instrumento
group by T.nome_tarefa
