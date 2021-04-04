CREATE TABLE IF NOT EXISTS Test(
    OutID VARCHAR(36) NOT NULL,
    Test VARCHAR(100) NOT NULL,
    Year SMALLINT NOT NULL,
    PtID INT,
    Lang VARCHAR(50),
    TestStatus VARCHAR(50),
    DPALevel VARCHAR(50),
    Ball100 REAL,
    Ball12 SMALLINT,
    Ball SMALLINT,
    AdaptScale SMALLINT,
    CONSTRAINT FKOutID
                 FOREIGN KEY (OutID)
                 REFERENCES Person(OutID),
    CONSTRAINT FKTest
                 FOREIGN KEY (Test)
                 REFERENCES SchoolSubject(Test),
    CONSTRAINT FKPTName
                 FOREIGN KEY (PtID)
                 REFERENCES TestPoint(PtID),
    PRIMARY KEY(OutID, Test, Year)
);
