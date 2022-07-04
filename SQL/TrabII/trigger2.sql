CREATE FUNCTION trigger_function()
RETURNS TRIGGER AS $$
	begin
		if
		    ((select
		          count(*)
		      from bdii.smart_home.contas_pagar cp
		      where n.valor_cont_pagar = cp.valor_cont_pagar and
		            cp.data_venc = n.data_venc) > 0)
			then
				select
					'a conta Já foi enserida';
              ELSE
            INSERT INTO bdii.smart_home.contas_pagar(id_cont_pagar, nome_cont_pagar, valor_cont_pagar, data_venc )
                VALUES (n.id_cont_pagar, n.nome_cont_pagar, n.valor_cont_pagar, n.data_venc);
		end if;
	end
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_pagamento_novo BEFORE INSERT
	ON bdii.smart_home.contas_pagar
	referencing NEW TABLE as n
	for each row
	execute function trigger_function()