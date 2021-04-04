CREATE TABLE IF NOT EXISTS TestPoint(
    PtID SERIAL PRIMARY KEY NOT NULL,
    PTName VARCHAR(500) NOT NULL,
    TerID INT NOT NULL,
    CONSTRAINT FKTerId
                      FOREIGN KEY (TerID)
                      REFERENCES GeoLocation(TerID)
);
