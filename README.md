# Database 3


## Introduction

## ER-diagram

![image1](https://raw.githubusercontent.com/niuniu268/Database3/e5ba3a66fd274d9f157f588fdafafcd079342ec3/ER%20Diagram.drawio.svg)

## BCNF

Composition Name -> BWV Num, CD Label, CD ID, Instrument

CD ID -> CD Title, CD Label, Performer, Orchestra, Conductor, Time

BWV Num -> Composition Name


## Tables
```
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

```
```
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

```

## Results

- list all the harpsichord pieces in the library
![image2](https://github.com/niuniu268/Database3/blob/master/images/Screenshot%202024-03-02%20at%2011.37.53.png?raw=true)
- list all available concertos (composition names that contains the word ’concert’)
![image3](https://github.com/niuniu268/Database3/blob/master/images/Screenshot%202024-03-02%20at%2011.39.12.png?raw=true)
- list all CDs with a recording of BWV 780, together with artists' names and CD titles
![image4](https://github.com/niuniu268/Database3/blob/master/images/Screenshot%202024-03-02%20at%2011.40.53.png?raw=true)
- list all the Glenn Gould recordings
![image5](https://github.com/niuniu268/Database3/blob/master/images/Screenshot%202024-03-02%20at%2011.42.37.png?raw=true)
- how many recordings in the library are of the same piece?
![image6](https://github.com/niuniu268/Database3/blob/master/images/Screenshot%202024-03-02%20at%2011.43.47.png?raw=true)
- show compositions with Al Fine's favorite key (F# minor)
![image7](https://github.com/niuniu268/Database3/blob/master/images/Screenshot%202024-03-02%20at%2011.44.27.png?raw=true)

## Summary

