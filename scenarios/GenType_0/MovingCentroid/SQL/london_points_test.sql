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
INSERT into london (thegeom, rand_int, rand_string, rand_ts, var_string ) VALUES (ST_SetSRID(ST_MakePoint(-0.005213284630880421,51.48469205163145),4326), 164, 'TtO93MzC4ZeuZiq', '2022-07-10 10:24:24', 'Honest Burgers'); 