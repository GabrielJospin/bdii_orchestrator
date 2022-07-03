SELECT
    cp.nome_cont_pagar,
    cp.valor_cont_pagar,
    m.nome,
    m.sobrenome,
    cb.banco,
    c.cep,
    cp.data_venc
FROM
    bdii.smart_home.pagamentos p,
    bdii.smart_home.moradores m,
    bdii.smart_home.contas_banco cb,
    bdii.smart_home.contas_pagar cp,
    bdii.smart_home.casas c
  WHERE
        m.id_morador = p.id_morador
AND     m.id_casa =  p.id_casa
AND     p.id_cont_pagar = cp.id_cont_pagar
AND     m.id_morador = cb.id_morador
AND     m.id_casa = cb.id_casa
AND     c.id_casa = m.id_casa;