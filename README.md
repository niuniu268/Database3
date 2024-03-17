# Database 3


## Introduction

According to the requirements, I have generated a CD_NO based on the CD_ID. The CD_NO serves as the primary key in the CDs table. Additionally, while considering integrity constraints, I have created several 2NF tables such as CD_Label, Performer, and Orchestra_Conductor. The CDs table is in BCNF.

In the CD_Label table, the CD_Label field serves as the primary key, which is associated with the CD_Label field in the CDs table. Similarly, in the Performer table, the Performer_Index field is the primary key, linked with the Performer_Index field in the CDs table. Likewise, in the Orchestra_Conductor table, the Orchestra_Conductor_Index field is the primary key, associated with the Orchestra_Conductor field in the CDs table.

In comparison to the CDs table, the Compositions table includes Composition_ID, CD_No, BWV_Num, Instrument, and Composition_Name. Composition_ID acts as the primary key. CD_No and Instrument are foreign keys referencing the CDs and Instrument tables, respectively. The Instrument table is in 2NF.

CD_No, BWV_Num, and Composition_Name serve as candidate keys in the Compositions table. The combination of CD_No, BWV_Num, and Composition_Name is unique within the Compositions table. Based on the aforementioned description, I have created an ER-diagram.

## ER-diagram

![IMAGE1](https://raw.githubusercontent.com/niuniu268/Database3/06af0791697f537ee8e9b6913b5cf5516169eeed/ER%20Diagram%20NEW.drawio.svg  )

## BCNF

Composition_ID -> BWV Num, CD_NO, Instrument, Composition_Name

CD_NO -> CD Title, CD Label, Performer, Orchestra_Conductor, Time, CD_ID

## Tables
```
CREATE TABLE CD_Label (
    CD_Label_Index INT AUTO_INCREMENT PRIMARY KEY,
    CD_Label VARCHAR(255)
);

INSERT INTO CD_Label (CD_Label)
VALUES
    ('Hyperion'),
    ('Concerto Classics'),
    ('Naxos'),
    ('Arts Music'),
    ('Sony'),
    ('Pickwick'),
    ('Harmonia Mundi'),
    ('DG'),
    ('Masters Classic');

CREATE TABLE Orchestra_Conductor (
    Orchestra_Conductor_Index INT AUTO_INCREMENT PRIMARY KEY,
    Orchestra VARCHAR(255),
    Conductor VARCHAR(255)
);

INSERT INTO Orchestra_Conductor (Orchestra, Conductor)
VALUES
    ('The King''s Consort', 'Robert King'),
    ('Hamburg Symphony Orchestra', 'Gabor Otücs'),
    ('Failoni Chamber Orchestra', 'Mátyás Antál'),
    ('Failoni Radio Orch./Hungarian Radio Choir', 'Géza Oberfrank'),
    ('St. James''s Baroque Players', 'Ivor Bolton'),
    ('Camerata Cassovia', 'Robert Stankovsky');

CREATE TABLE Performer (
    Performer_Index INT AUTO_INCREMENT PRIMARY KEY,
    Performer VARCHAR(255)
);

INSERT INTO Performer (Performer)
VALUES
    ('Catherine MacKintosh'),
    ('Various'),
    ('Tatiana Nikolaeva'),
    ('Wolfgang Rübsam'),
    ('Pieter Jan Belder'),
    ('Glenn Gould'),
    ('Ivor Bolton'),
    ('János Sebestyén'),
    ('Hae-won Chang'),
    ('Pierre Fournier'),
    ('Christiane Edinger'),
    ('Christiane Jaccottet');


CREATE TABLE Instrument (
    Instrument_Index INT AUTO_INCREMENT PRIMARY KEY,
    Instrument VARCHAR(255)
);

INSERT INTO Instrument (Instrument)
VALUES
    ('Orchestra'),
    ('Orchestra/Choir'),
    ('Piano'),
    ('Orchestra/Vocal'),
    ('Harpsichord'),
    ('Violin'),
    ('Violincello'),
    ('Violin/Oboe');


```
```
CREATE TABLE Compositions (
    Composition_ID INT AUTO_INCREMENT PRIMARY KEY,
    Composition_Name VARCHAR(255),
    BWV_Num VARCHAR(255),
    Instrument INT,
    CD_No VARCHAR(20),
    FOREIGN KEY (CD_No) REFERENCES CDs(CD_No),
    FOREIGN KEY (Instrument) REFERENCES Instrument(Instrument_Index),
    UNIQUE(Composition_Name, BWV_Num, CD_No)
);

CREATE TABLE Compositions (
    Composition_ID INT AUTO_INCREMENT PRIMARY KEY,
    Composition_Name VARCHAR(255),
    BWV_Num VARCHAR(255),
    Instrument INT,
    CD_No VARCHAR(20),
    FOREIGN KEY (CD_No) REFERENCES CDs(CD_No),
    FOREIGN KEY (Instrument) REFERENCES Instrument(Instrument_Index),
    UNIQUE(Composition_Name, BWV_Num, CD_No)
);

```

## Results

- list all the harpsichord pieces in the library
![image2](https://github.com/niuniu268/Database3/blob/master/images/Screenshot%202024-03-16%20at%2023.49.44.png?raw=true)
- list all available concertos (composition names that contains the word ’concert’)
![image3](https://github.com/niuniu268/Database3/blob/master/images/Screenshot%202024-03-16%20at%2023.51.48.png?raw=true)
- list all CDs with a recording of BWV 780, together with artists' names and CD titles
![image4](https://github.com/niuniu268/Database3/blob/master/images/Screenshot%202024-03-16%20at%2023.53.10.png?raw=true)
- list all the Glenn Gould recordings
![image5](https://github.com/niuniu268/Database3/blob/master/images/Screenshot%202024-03-16%20at%2023.56.41.png?raw=true)
- how many recordings in the library are of the same piece?
![image6](https://github.com/niuniu268/Database3/blob/master/images/Screenshot%202024-03-16%20at%2023.57.59.png?raw=true)
- show compositions with Al Fine's favorite key (F# minor)
![image7](https://github.com/niuniu268/Database3/blob/master/images/Screenshot%202024-03-17%20at%2000.02.52.png?raw=true)

## Summary

This has been a valuable experience for practicing the design of a relational database and writing SQL queries. Initially, I overlooked the requirements for designing a relational database and misunderstood the definition of BCNF. After carefully reading through the document, I redesigned the database and completed the SQL queries.