create table smart_home.casas(
    id_casa             INTEGER           NOT NULL    PRIMARY KEY
,   cep                 VARCHAR(9)        NOT NULL
,   logradouro          VARCHAR(45)
,   bairro              VARCHAR(45)
,   cidade              VARCHAR(45)
,   uf                  VARCHAR(2)
,   regiao              VARCHAR(45)
,   complemento         VARCHAR(45)
,   id_responsaveis     INTEGER
,   FOREIGN KEY (id_responsaveis) REFERENCES smart_home.responsaveis(id_responsaveis)
);