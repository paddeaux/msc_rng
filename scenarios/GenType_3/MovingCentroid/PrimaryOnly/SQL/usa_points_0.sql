DROP TABLE IF EXISTS usa; 
CREATE TABLE usa ( 
pkid SERIAL PRIMARY KEY NOT NULL, 
thegeom GEOMETRY DEFAULT ST_GeomFromText('POINT(0,51)', 4326), 
rand_int INTEGER, 
rand_string VARCHAR, 
rand_ts TIMESTAMP,
var_string VARCHAR
); 
CREATE INDEX usa_spatial_index ON usa USING gist (thegeom); 
INSERT into usa (thegeom, rand_int, rand_string, rand_ts, var_string ) VALUES (ST_SetSRID(ST_MakePoint(-102.2607234014467,38.29548581778584),4326), 593, 'EL5JTb0Ku3yJFVu', '2022-10-01 12:40:49', 'Papa John''s'); 