--DROP view smart_home.purchase_report;

Create View smart_home.purchase_report as(
    select
    c.id_compra                     as "id_compra"
,   c.valor/100::DECIMAL            as "valor"
,   i.nome                          as "item"
,   i.marca                         as "marca"
,   concat(m.nome,' ',m.sobrenome)  as "nome"
,   lv.nome                         as "local"
from
    smart_home.compras c
,   (select
         aux.nome, aux.sobrenome, aux.id_casa, aux.id_morador
     from smart_home.moradores aux where aux.id_casa = 1) m
,   smart_home.local_venda lv
,   smart_home.itens   i

where
    c.id_casa = m.id_casa
and c.id_morador = m.id_morador
and c.id_local = lv.id_local
and c.codigo_de_barra = i.codigo_de_barra);