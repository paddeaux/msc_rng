DROP TABLE IF EXISTS maynooth; 
CREATE TABLE maynooth ( 
pkid SERIAL PRIMARY KEY NOT NULL, 
thegeom GEOMETRY DEFAULT ST_GeomFromText('POINT(0,51)', 4326), 
rand_int INTEGER, 
rand_string VARCHAR, 
rand_ts TIMESTAMP
); 
CREATE INDEX maynooth_spatial_index ON maynooth USING gist (thegeom); 
INSERT into maynooth (thegeom, rand_int, rand_string, rand_ts) VALUES (ST_SetSRID(ST_MakePoint(-6.601326699583784,53.38216024285215),4326), 851, '41x7xdmJiB60Vwz', '2022-11-10 09:12:58'); 