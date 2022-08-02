DROP TABLE IF EXISTS maynooth; 
CREATE TABLE maynooth ( 
pkid SERIAL PRIMARY KEY NOT NULL, 
thegeom GEOMETRY DEFAULT ST_GeomFromText('POINT(0,51)', 4326), 
rand_int INTEGER, 
rand_string VARCHAR, 
rand_ts TIMESTAMP
); 
CREATE INDEX maynooth_spatial_index ON maynooth USING gist (thegeom); 
INSERT into maynooth (thegeom, rand_int, rand_string, rand_ts) VALUES (ST_SetSRID(ST_MakePoint(-6.5965788293156145,53.3830592024881),4326), 180, '9BD2lKcP0Ap46fG', '2022-10-30 07:53:13'); 