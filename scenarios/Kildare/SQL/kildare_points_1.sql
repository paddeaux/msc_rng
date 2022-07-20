DROP TABLE IF EXISTS kildare; 
CREATE TABLE kildare ( 
pkid SERIAL PRIMARY KEY NOT NULL, 
thegeom GEOMETRY DEFAULT ST_GeomFromText('POINT(0,51)', 4326), 
rand_int INTEGER, 
rand_string VARCHAR, 
rand_ts TIMESTAMP,
fast_food_name VARCHAR
); 
CREATE INDEX kildare_spatial_index ON kildare USING gist (thegeom); 
INSERT into kildare (thegeom, rand_int, rand_string, rand_ts, fast_food_name ) VALUES (ST_SetSRID(ST_MakePoint(-6.877932566390946,53.17204386895357),4326), 80347, 'RG5T4bsIy42TkmO', '2022-04-30 20:48:32', 'McDonald''s'); 