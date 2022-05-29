COPY smart_home.itens
FROM  '/home/gab_jos/Projects/BDII/Test_enverioment/Databases/Bronze_Layer/itens.csv'
CSV HEADER;

COPY smart_home.alimentos
FROM  '/home/gab_jos/Projects/BDII/Test_enverioment/Databases/Bronze_Layer/alimento.csv'
CSV HEADER;

COPY smart_home.higiene
FROM  '/home/gab_jos/Projects/BDII/Test_enverioment/Databases/Bronze_Layer/higiene.csv'
CSV HEADER;

COPY smart_home.roupas
FROM  '/home/gab_jos/Projects/BDII/Test_enverioment/Databases/Bronze_Layer/Roupas.csv'
CSV HEADER;
