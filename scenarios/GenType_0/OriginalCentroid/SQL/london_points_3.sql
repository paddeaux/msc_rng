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
INSERT into london (thegeom, rand_int, rand_string, rand_ts, var_string ) VALUES (ST_SetSRID(ST_MakePoint(-0.10186053930491655,51.50133322090388),4326), 625, 'SpBOUp453WsWOX8', '2022-01-01 11:42:13', 'McDonald''s'); 