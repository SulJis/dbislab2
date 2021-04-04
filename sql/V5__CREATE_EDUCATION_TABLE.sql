CREATE TABLE IF NOT EXISTS Education(
    OutID VARCHAR(36) NOT NULL,
    InstID SERIAL NOT NULL,
    ClassProfileName varchar(50),
    ClassLangName varchar(20),
    CONSTRAINT FKOutID
                      FOREIGN KEY (OutID)
                      REFERENCES Person(OutID),
    CONSTRAINT FKEOName
                      FOREIGN KEY (InstID)
                      REFERENCES Institution(InstID),
    PRIMARY KEY(OutID, InstID)

);