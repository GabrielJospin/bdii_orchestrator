create table smart_home.contas_banco(
    banco       INTEGER     NOT NULL
,   agencia     INTEGER     NOT NULL
,   conta       VARCHAR(10)  NOT NULL
,   saldo       INTEGER     NOT NULL
,   id_casa     INTEGER     NOT NULL
,   id_morador  INTEGER     NOT NULL
,   unique (banco,agencia,conta)
,   PRIMARY KEY(banco, agencia, conta)
,   FOREIGN KEY(id_casa, id_morador)    REFERENCES smart_home.moradores(id_casa, id_morador)
);