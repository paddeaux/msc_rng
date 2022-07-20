DROP TABLE IF EXISTS usa; 
CREATE TABLE usa ( 
pkid SERIAL PRIMARY KEY NOT NULL, 
thegeom GEOMETRY DEFAULT ST_GeomFromText('POINT(0,51)', 4326), 
rand_int INTEGER, 
rand_string VARCHAR, 
rand_ts TIMESTAMP,
fast_food_name VARCHAR
); 
CREATE INDEX usa_spatial_index ON usa USING gist (thegeom); 
INSERT into usa (thegeom, rand_int, rand_string, rand_ts, fast_food_name ) VALUES (ST_SetSRID(ST_MakePoint(-94.94085320655816,40.704770924766905),4326), 94640, 'JVBg09aSgXLXnaj', '2022-05-26 21:28:49', 'Domino''s Pizza'); 