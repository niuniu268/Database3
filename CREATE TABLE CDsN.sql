CREATE TABLE CDs (
    CD_No VARCHAR(20) PRIMARY KEY,
    CD_Title VARCHAR(255),
    CD_ID VARCHAR(100),
    CD_Label INT,
    Performer INT,
    Orchestra_Conductor INT,
    Time VARCHAR(20),
    FOREIGN KEY (CD_Label) REFERENCES CD_Label(CD_Label_Index),
    FOREIGN KEY (Performer) REFERENCES Performer(Performer_Index),
    FOREIGN KEY (Orchestra_Conductor) REFERENCES Orchestra_Conductor(Orchestra_Conductor_Index)
);




INSERT INTO CDs (CD_No, CD_Title, CD_ID, CD_Label, Performer, Orchestra_Conductor, Time)
VALUES
    ('CD1', 'Bach ViolinConcertos', 'CDA66380', 1, 1, 1, '58.5'),
    ('CD2', 'Brandenburg Concertos ##1-3', 'OQ0062', 2, NULL, 2, NULL),
    ('CD3', 'Brandenburg Concertos ##4-6', 'OQ0063', 2, NULL, 2, NULL),
    ('CD4', 'Cantatas ("Coffee"/"Peasant")', '8.550641', 3, 2, 3, '51.42'),
    ('CD5', 'Cantatas BWV 80 & BWV 147', '8.550642', 3, 2, 3, '53.48'),
    ('CD6', 'Christmas Oratoria', '8.550428-430', 3, 2, 4, '148.06'),
    ('CD7', 'Die Kunst der Fugue', 'CDA66631/2', 1, 3, NULL, '122.15'),
    ('CD8', 'French Suites ##1 & 2', '8.550709', 3, 4, NULL, '55.24'),
    ('CD9', 'French Suites ##3 - 6', '8.550710', 3, 4, NULL, '65.46'),
    ('CD10', 'Goldberg Variationen', 'WVH 032', 4, 5, NULL, NULL),
    ('CD11', 'Goldberg Variations', 'SMN 52594', 5, 6, NULL, '46.11'),
    ('CD12', 'Handel / Bach Harpsichord', 'SMN 52590', 5, 6, NULL, '55.11'),
    ('CD13', 'Harpsichord Concertos', 'PCD 864', 6, 7, 5, '63.18'),
    ('CD14', 'Inventions & Sinfoniae', '1905161', 7, 3, NULL, '56.11'),
    ('CD15', 'J.S. Bach Piano Works', '8.550571', 3, 8, NULL, '63.16'),
    ('CD16', 'Piano Concertos (Complete) Vol 1', '8.550422', 3, 9, 6, '61.55'),
    ('CD17', 'Piano Concertos (Complete) Vol 2', '8.550423', 3, 9, 6, '57.12'),
    ('CD18', 'Sechs Suiten für Violincello solo', '419 359-2', 8, 10, NULL, '138.45'),
    ('CD19', 'Sonatas and Partitas for Solo Violin Vol 1', '8.550569', 3, 11, NULL, '77'),
    ('CD20', 'Sonatas and Partitas for Solo Violin Vol 2', '8.550570', 3, 11, NULL, '76.12'),
    ('CD21', 'The Well Tempered Clavier Book 1', 'SMN 52600', 5, 6, NULL, '106.39'),
    ('CD22', 'The Well Tempered Clavier Part 1 ##1-12', 'CLS 4203', 9, 12, NULL, '51.28'),
    ('CD23', 'The Well Tempered Clavier Part 1 ##13-24', 'CLS 4205', 9, 12, NULL, '50.49'),
    ('CD24', 'Two and Three Part Inventions', 'SMK 52596', 5, 6, NULL, '50.04');
