DROP TABLE IF EXISTS iceland; 
CREATE TABLE iceland ( 
pkid SERIAL PRIMARY KEY NOT NULL, 
thegeom GEOMETRY DEFAULT ST_GeomFromText('POINT(0,51)', 4326), 
rand_int INTEGER, 
rand_string VARCHAR, 
rand_ts TIMESTAMP,
var_string VARCHAR
); 
CREATE INDEX iceland_spatial_index ON iceland USING gist (thegeom); 
INSERT into iceland (thegeom, rand_int, rand_string, rand_ts, var_string ) VALUES (ST_SetSRID(ST_MakePoint(-21.71721250689967,64.93448036496629),4326), 287, 'ur5Pa7nP48lnmrl', '2022-12-25 17:37:29', 'Papa John''s'); 