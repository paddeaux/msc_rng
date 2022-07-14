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
INSERT into argentina (thegeom, rand_int, rand_string, rand_ts, var_string ) VALUES (ST_SetSRID(ST_MakePoint(-69.70324693548201,-35.75485772103003),4326), 339, 'QF1wYkEEhS0ia7T', '2022-02-11 10:11:18', 'Burger King'); 