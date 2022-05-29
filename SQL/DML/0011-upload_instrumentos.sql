COPY smart_home.instrumentos
FROM  '/home/gab_jos/Projects/BDII/Test_enverioment/Databases/Bronze_Layer/Instrumento.csv'
CSV HEADER;

COPY smart_home.eletrodomesticos
FROM  '/home/gab_jos/Projects/BDII/Test_enverioment/Databases/Bronze_Layer/Eletrodomestico.csv'
CSV HEADER;