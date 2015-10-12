DROP TABLE mapped_feature_postgis;

CREATE TABLE mapped_feature_postgis (
    mslink INTEGER PRIMARY KEY,
    lex_d VARCHAR(80) NOT NULL
);
SELECT AddGeometryColumn('mapped_feature_postgis', 'shape', 4326, 'POLYGON', 2);

INSERT INTO mapped_feature_postgis (mslink, lex_d, shape) VALUES (651, 'GUNTHORPE FORMATION', GeometryFromText('POLYGON((-1.2 52.5,-1.2 52.6,-1.1 52.6,-1.1 52.5,-1.2 52.5))', 4326));
INSERT INTO mapped_feature_postgis (mslink, lex_d, shape) VALUES (269, 'MERCIA MUDSTONE GROUP', GeometryFromText('POLYGON((-1.3 52.5,-1.3 52.6,-1.2 52.6,-1.2 52.5,-1.3 52.5))', 4326));
