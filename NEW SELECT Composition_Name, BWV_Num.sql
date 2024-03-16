SELECT Composition_Name, BWV_Num
FROM Compositions
WHERE Instrument = (
    SELECT Instrument_Index
    FROM Instrument
    WHERE Instrument = 'Harpsichord'
);
