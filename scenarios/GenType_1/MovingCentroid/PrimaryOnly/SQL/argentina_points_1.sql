DROP TABLE IF EXISTS argentina; 
CREATE TABLE argentina ( 
pkid SERIAL PRIMARY KEY NOT NULL, 
thegeom GEOMETRY DEFAULT ST_GeomFromText('POINT(0,51)', 4326), 
rand_int INTEGER, 
rand_string VARCHAR, 
rand_ts TIMESTAMP,
var_string VARCHAR
); 
CREATE INDEX argentina_spatial_index ON argentina USING gist (thegeom); 
INSERT into argentina (thegeom, rand_int, rand_string, rand_ts, var_string ) VALUES (ST_SetSRID(ST_MakePoint(-63.160444903668335,-36.08659115238774),4326), 891, 'ZT4wvPThuST5LFV', '2022-03-10 17:34:54', 'Morley''s'); 