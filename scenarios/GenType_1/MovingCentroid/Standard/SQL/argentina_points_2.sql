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
INSERT into argentina (thegeom, rand_int, rand_string, rand_ts, var_string ) VALUES (ST_SetSRID(ST_MakePoint(-69.13634814635348,-35.128320891489324),4326), 851, 'n3HZ9p8DoVGyBle', '2022-04-04 05:16:24', 'Pret A Manger'); 