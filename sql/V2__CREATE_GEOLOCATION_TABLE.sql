CREATE TABLE IF NOT EXISTS GeoLocation(
  TerID SERIAL PRIMARY KEY NOT NULL,
  TerName VARCHAR(100),
  AreaName VARCHAR(100),
  RegName VARCHAR(100),
  TerTypeName VARCHAR(10)
);