DROP TABLE IF EXISTS maynooth; 
CREATE TABLE maynooth ( 
pkid SERIAL PRIMARY KEY NOT NULL, 
thegeom GEOMETRY DEFAULT ST_GeomFromText('POINT(0,51)', 4326), 
rand_int INTEGER, 
rand_string VARCHAR, 
rand_ts TIMESTAMP,
var_string VARCHAR
); 
CREATE INDEX maynooth_spatial_index ON maynooth USING gist (thegeom); 
INSERT into maynooth (thegeom, rand_int, rand_string, rand_ts, var_string ) VALUES (ST_SetSRID(ST_MakePoint(-6.584413655868209,53.38196763331475),4326), 813, 'K1fA7h4Plz45e8o', '2022-06-06 12:21:37', 'Gourmet Burger Kitchen'); 