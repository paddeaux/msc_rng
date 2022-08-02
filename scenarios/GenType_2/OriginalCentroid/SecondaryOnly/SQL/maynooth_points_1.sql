DROP TABLE IF EXISTS maynooth; 
CREATE TABLE maynooth ( 
pkid SERIAL PRIMARY KEY NOT NULL, 
thegeom GEOMETRY DEFAULT ST_GeomFromText('POINT(0,51)', 4326), 
rand_int INTEGER, 
rand_string VARCHAR, 
rand_ts TIMESTAMP
); 
CREATE INDEX maynooth_spatial_index ON maynooth USING gist (thegeom); 
INSERT into maynooth (thegeom, rand_int, rand_string, rand_ts) VALUES (ST_SetSRID(ST_MakePoint(-6.5843203486497615,53.380327511510224),4326), 191, 'ocFR1Z3c6UH9IPN', '2022-05-22 06:13:51'); 