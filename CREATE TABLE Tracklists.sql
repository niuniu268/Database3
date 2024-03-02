CREATE TABLE Tracklists (
    Catalog_Num INT AUTO_INCREMENT PRIMARY KEY,
    CD_ID VARCHAR(20),
    Composition_Name VARCHAR(255),
    BWV_Num VARCHAR(20),
    FOREIGN KEY (CD_ID) REFERENCES CDs(CD_ID),
    FOREIGN KEY (Composition_Name, BWV_Num) REFERENCES Compositions(Composition_Name, BWV_Num)
);