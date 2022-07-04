COPY smart_home.instrumentos
FROM  '/Users/fernanda.elimelek/Projetos/bdii_orchestrator/Databases/Bronze_Layer/Instrumento.csv'
CSV HEADER;

COPY smart_home.eletrodomesticos
FROM  '/Users/fernanda.elimelek/Projetos/bdii_orchestrator/Databases/Bronze_Layer/Eletrodomestico.csv'
CSV HEADER;