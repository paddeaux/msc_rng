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
INSERT into usa (thegeom, rand_int, rand_string, rand_ts, var_string ) VALUES (ST_SetSRID(ST_MakePoint(-112.75775995922689,38.8496171564308),4326), 606, 'XuDOFGGWJ5aFpDh', '2022-09-30 00:49:52', 'Carluccio''s'); 