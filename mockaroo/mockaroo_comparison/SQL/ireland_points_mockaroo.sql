DROP TABLE IF EXISTS ireland; 
CREATE TABLE ireland ( 
pkid SERIAL PRIMARY KEY NOT NULL, 
thegeom GEOMETRY DEFAULT ST_GeomFromText('POINT(0,51)', 4326), 
rand_int INTEGER, 
rand_string VARCHAR, 
rand_ts TIMESTAMP,
var_string VARCHAR,
var_number INTEGER,
var_number2 INTEGER
); 
CREATE INDEX ireland_spatial_index ON ireland USING gist (thegeom); 
INSERT into ireland (thegeom, rand_int, rand_string, rand_ts, var_string, var_number, var_number2 ) VALUES (ST_SetSRID(ST_MakePoint(-7.924229171025847,53.468603289130755),4326), 198, 'lRZUcqb6rNOYNkA', '2022-11-06 00:35:39', 'Nando''s', 5, 3); 