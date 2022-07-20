DROP TABLE IF EXISTS london; 
CREATE TABLE london ( 
pkid SERIAL PRIMARY KEY NOT NULL, 
thegeom GEOMETRY DEFAULT ST_GeomFromText('POINT(0,51)', 4326), 
rand_int INTEGER, 
rand_string VARCHAR, 
rand_ts TIMESTAMP,
price INTEGER
); 
CREATE INDEX london_spatial_index ON london USING gist (thegeom); 
INSERT into london (thegeom, rand_int, rand_string, rand_ts, price ) VALUES (ST_SetSRID(ST_MakePoint(-0.11017821255668864,51.50749303270313),4326), 228, 'ZksqWHp9gK6fqvF', '2022-10-03 01:17:42', 200000); 