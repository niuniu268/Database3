# Database 3


## Introduction

According to the requirements, I generated a Radio_catalog_number. The radio_catalog_number is automatically incremented. I am aware that the CD_ID is unique, so I set up the CD_ID as the primary key in the table CDs. Both Radio_catalog_number and CD_ID are unique. Compared with creating CD1 and CD2 through Excel, I decided to use another method to address the problem. I set up a column, Composition_ID, as the primary key in the table Compositions. The Composition_ID is unique and automatically incremented. In comparison with 1NF and 2NF, the database is in BCNF. Consequently, I attempted to address SQL questions. 

## ER-diagram

+----------------+             +---------------------+              +-----------------------+               +-------------+
|     CDs        |-------------|     Compositions    |--------------|       CD_Label         |---------------|  Performer  |
+----------------+             +---------------------+              +-----------------------+               +-------------+
| CD_No (PK)     |             | Composition_ID (PK) |              | CD_Label_Index (PK)   |               | Performer_Index (PK) |
| CD_Title       |             | Composition_Name    |              | CD_Label              |               | Performer             |
| CD_ID          |             | BWV_Num             |              +-----------------------+               +-------------+
| CD_Label (FK)  |             | Instrument (FK)     |                                                      | Performer           |
| Performer (FK) |             | CD_No (FK)          |                                                      +-------------+
| Orchestra_Conductor (FK) |                                                                                   
+----------------+             +---------------------+                                                          
                                                                  +---------------------------+
                                                                  |     Orchestra_Conductor   |
                                                                  +---------------------------+
                                                                  | Orchestra_Conductor_Index |
                                                                  | Orchestra                  |
                                                                  | Conductor                  |
                                                                  +---------------------------+
                                                                  | Orchestra/Conductor       |
                                                                  +---------------------------+
                                                                  | Orchestra                  |
                                                                  | Conductor                  |
                                                                  +---------------------------+
                                                                  | Conductor                  |
                                                                  +---------------------------+

+----------------+
|   Instrument   |
+----------------+
| Instrument_Index (PK) |
| Instrument           |
+-----------------------+


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

This is a valuable experience to practice designing a relational database and writing SQL queries.