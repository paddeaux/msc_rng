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
INSERT into usa (thegeom, rand_int, rand_string, rand_ts, var_string ) VALUES (ST_SetSRID(ST_MakePoint(-108.60260948485998,39.16069234497263),4326), 446, 'kghgQD0HUgWeWdR', '2022-07-18 15:23:46', 'Carluccio''s'); 