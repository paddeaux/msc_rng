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
INSERT into iceland (thegeom, rand_int, rand_string, rand_ts, var_string ) VALUES (ST_SetSRID(ST_MakePoint(-18.023309588824265,64.90270015878076),4326), 95, 'AybA5pKvgVnEmLH', '2022-10-28 16:50:36', 'Nando''s'); 