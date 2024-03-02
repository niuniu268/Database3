CREATE TABLE Compositions (
    Composition_ID INT AUTO_INCREMENT PRIMARY KEY,
    Composition_Name VARCHAR(255),
    BWV_Num VARCHAR(255),
    CD_Label VARCHAR(255),
    CD_ID VARCHAR(100),
    Instrument VARCHAR(255),
    UNIQUE KEY (Composition_Name, BWV_Num, CD_ID),
    FOREIGN KEY (CD_ID) REFERENCES CDs(CD_ID)
);


LOAD DATA LOCAL INFILE '/home/niuniu/Documents/DatabaseAssignment3/Labb3_list2.csv'
INTO TABLE Compositions
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Composition_Name, BWV_Num, CD_Label, CD_ID, Instrument);
