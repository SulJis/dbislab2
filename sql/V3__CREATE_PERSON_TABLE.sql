CREATE TABLE IF NOT EXISTS Person(
    OutID VARCHAR(36) PRIMARY KEY NOT NULL,
    Birth smallint,
    SexTypeName VARCHAR(15),
    RegTypeName varchar(100),
    TerID INT,
    CONSTRAINT FKTerId
        FOREIGN KEY(TerID)
            REFERENCES GeoLocation(TerID)
);