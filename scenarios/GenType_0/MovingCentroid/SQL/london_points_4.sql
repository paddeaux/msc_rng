DROP TABLE IF EXISTS london; 
CREATE TABLE london ( 
pkid SERIAL PRIMARY KEY NOT NULL, 
thegeom GEOMETRY DEFAULT ST_GeomFromText('POINT(0,51)', 4326), 
rand_int INTEGER, 
rand_string VARCHAR, 
rand_ts TIMESTAMP,
var_string VARCHAR
); 
CREATE INDEX london_spatial_index ON london USING gist (thegeom); 
INSERT into london (thegeom, rand_int, rand_string, rand_ts, var_string ) VALUES (ST_SetSRID(ST_MakePoint(0.05249643208563549,51.51585661980623),4326), 135, 'bO6Iqr0aeLlwcdO', '2022-01-07 03:50:04', 'Pizza GoGo'); 