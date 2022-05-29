create table smart_home.contas_pagar(
    id_cont_pagar       INTEGER         NOT NULL    PRIMARY KEY
,   Nome_cont_pagar     VARCHAR(45)     NOT NULL
,   valor_cont_pagar    INTEGER         NOT NULL
,   Data_venc           DATE            NOT NULL
);