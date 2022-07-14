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
INSERT into london (thegeom, rand_int, rand_string, rand_ts, var_string ) VALUES (ST_SetSRID(ST_MakePoint(0.07179091508651007,51.46608121091639),4326), 779, 'WNpEDfAqy3ReOI1', '2022-02-02 06:37:49', 'Pret A Manger'); 