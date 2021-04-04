CREATE TABLE IF NOT EXISTS Institution(
    InstID SERIAL PRIMARY KEY,
    EOName VARCHAR(500) NOT NULL,
    EOParent VARCHAR(500),
    EOTypeName VARCHAR(100),
    TerID INT,
    CONSTRAINT FKTerId
        FOREIGN KEY(TerID)
            REFERENCES GeoLocation(TerID)
);
