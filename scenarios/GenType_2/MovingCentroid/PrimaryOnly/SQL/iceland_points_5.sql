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
INSERT into iceland (thegeom, rand_int, rand_string, rand_ts, var_string ) VALUES (ST_SetSRID(ST_MakePoint(-16.6008983359172,65.126132520077),4326), 408, 'iS9KMhUoNt8aeSf', '2022-09-18 09:43:25', 'Gourmet Burger Kitchen'); 