CREATE TABLE CDs (
    CD_ID VARCHAR(100) PRIMARY KEY,
    CD_Title VARCHAR(255),
    CD_Label VARCHAR(255),
    Performer VARCHAR(255),
    Orchestra VARCHAR(255),
    Conductor VARCHAR(255),
    Time VARCHAR(20)
);



CREATE TABLE Compositions (
    Composition_Name VARCHAR(255),
    BWV_Num VARCHAR(50),
    CD_Label VARCHAR(255),
    CD_ID VARCHAR(100),
    Instrument VARCHAR(255),
    PRIMARY KEY (Composition_Name, BWV_Num),
    FOREIGN KEY (CD_ID) REFERENCES CDs(CD_ID)
);

CREATE TABLE Tracklists (
    Catalog_Num INT AUTO_INCREMENT PRIMARY KEY,
    CD_ID VARCHAR(20),
    Composition_Name VARCHAR(255),
    BWV_Num VARCHAR(20),
    FOREIGN KEY (CD_ID) REFERENCES CDs(CD_ID),
    FOREIGN KEY (Composition_Name, BWV_Num) REFERENCES Compositions(Composition_Name, BWV_Num)
);