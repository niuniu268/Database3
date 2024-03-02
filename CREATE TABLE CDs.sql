
CREATE TABLE CDs (
    CD_Title VARCHAR(255),
    CD_ID VARCHAR(100) PRIMARY KEY,
    CD_Label VARCHAR(255),
    Performer VARCHAR(255),
    Orchestra VARCHAR(255),
    Conductor VARCHAR(255),
    Time VARCHAR(20),
    Radio_Catalog_Number INT AUTO_INCREMENT,
    UNIQUE KEY (CD_ID),
    UNIQUE KEY (Radio_Catalog_Number)
);

LOAD DATA LOCAL INFILE '/home/niuniu/Documents/DatabaseAssignment3/Labb3_list1.csv'
INTO TABLE CDs
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
