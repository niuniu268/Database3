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
