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
INSERT into argentina (thegeom, rand_int, rand_string, rand_ts, var_string ) VALUES (ST_SetSRID(ST_MakePoint(-66.7073260512371,-37.28951371242109),4326), 448, 'KLKX0DFae3vxSpy', '2022-08-09 01:29:58', 'McDonald''s'); 