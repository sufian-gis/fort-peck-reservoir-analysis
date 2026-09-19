CREATE TABLE usgs_station (
    station_id VARCHAR(20) PRIMARY KEY,
    station_name VARCHAR(200) NOT NULL,
    county VARCHAR(100),
    latitude DOUBLE PRECISION,
    longitude DOUBLE PRECISION,
    horizontal_datum VARCHAR(20),
    vertical_crs VARCHAR(20),
    geom geometry(Point, 4269)
);
INSERT INTO usgs_station
(
    station_id,
    station_name,
    county,
    latitude,
    longitude,
    horizontal_datum,
    vertical_crs,
    geom
)
VALUES
(
    '06132000',
    'Missouri River below Fort Peck Dam MT',
    'McCone County, Montana',
    48.044425,
    -106.3562583,
    'NAD83',
    'NGVD29',
    ST_SetSRID( ST_MakePoint(-106.3562583, 48.044425),4269
    )
);
