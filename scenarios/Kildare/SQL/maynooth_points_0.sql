DROP TABLE IF EXISTS maynooth; 
CREATE TABLE maynooth ( 
pkid SERIAL PRIMARY KEY NOT NULL, 
thegeom GEOMETRY DEFAULT ST_GeomFromText('POINT(0,51)', 4326), 
rand_int INTEGER, 
rand_string VARCHAR, 
rand_ts TIMESTAMP,
var_string VARCHAR,
var_number INTEGER,
var_number2 INTEGER
); 
CREATE INDEX maynooth_spatial_index ON maynooth USING gist (thegeom); 
INSERT into maynooth (thegeom, rand_int, rand_string, rand_ts, var_string, var_number, var_number2 ) VALUES (ST_SetSRID(ST_MakePoint(-6.593932782931785,53.38013716393379),4326), 133, 'ITB5tX4vrhkVUcr', '2022-09-15 19:16:08', 'Subway', 5, 3); 