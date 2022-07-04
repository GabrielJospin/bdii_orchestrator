CREATE TABLE smart_home.compras(
    id_compra       INTEGER NOT NULL
,   id_casa         INTEGER NOT NULL
,   id_morador      INTEGER NOT NULL
,   codigo_de_barra INTEGER NOT NULL
,   id_local        INTEGER NOT NULL
,   valor           INTEGER NOT NULL
,   unique(id_compra)
,   PRIMARY KEY(id_compra)
,   FOREIGN KEY(id_casa, id_morador)    REFERENCES smart_home.moradores(id_casa, id_morador)
,   FOREIGN KEY(codigo_de_barra)         REFERENCES smart_home.itens(codigo_de_barra)
,   FOREIGN KEY(id_local)         REFERENCES smart_home.local_venda(id_local)
);