select
    SUM(valor) as "total"
,   nome
from smart_home.purchase_report
group by nome
order by total desc;

select
    SUM(valor) as "total"
,   local
from smart_home.purchase_report
group by local
order by total desc;

select
    c.id_compra
,   c.valor/100::DECIMAL
,   i.nome
,   i.marca
,   concat(m.nome,' ',m.sobrenome)
,   lv.nome
from
    smart_home.compras c
,   smart_home.itens   i
,   (select
         aux.nome, aux.sobrenome, aux.id_casa, aux.id_morador
     from smart_home.moradores aux where aux.id_casa = 1) m
,   smart_home.local_venda lv
where
    -- m.id_casa = 1
    c.id_casa = m.id_casa
and c.id_morador = m.id_morador
and c.id_local = lv.id_local
and c.codigo_de_barra = i.codigo_de_barra;)/100::DECIMAL as "total"
,   name
from smart_home.purchase_report
group by name
order by total desc;
