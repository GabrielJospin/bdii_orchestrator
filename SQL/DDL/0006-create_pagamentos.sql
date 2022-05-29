create table smart_home.pagamentos(
    id_cont_pagar   INTEGER     NOT NULL
,   id_casa         INTEGER     NOT NULL
,   id_morador      INTEGER     NOT NULL
,   unique(id_casa, id_morador, id_cont_pagar)
,   PRIMARY KEY(id_casa, id_morador, id_cont_pagar)
,   FOREIGN KEY(id_casa, id_morador)    REFERENCES smart_home.moradores(id_casa, id_morador)
,   FOREIGN KEY(id_cont_pagar)          REFERENCES smart_home.contas_pagar(id_cont_pagar)
);