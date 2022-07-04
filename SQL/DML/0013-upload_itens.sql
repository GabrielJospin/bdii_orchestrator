COPY smart_home.itens
FROM  '/Users/fernanda.elimelek/Projetos/bdii_orchestrator/Databases/Bronze_Layer/itens.csv'
CSV HEADER;

COPY smart_home.alimentos
FROM  '/Users/fernanda.elimelek/Projetos/bdii_orchestrator/Databases/Bronze_Layer/alimento.csv'
CSV HEADER;

COPY smart_home.higiene
FROM  '/Users/fernanda.elimelek/Projetos/bdii_orchestrator/Databases/Bronze_Layer/higiene.csv'
CSV HEADER;

COPY smart_home.roupas
FROM  '/Users/fernanda.elimelek/Projetos/bdii_orchestrator/Databases/Bronze_Layer/Roupas.csv'
CSV HEADER;
