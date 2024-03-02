SELECT CDs.CD_Title, CDs.Performer, Compositions.Composition_Name
FROM Compositions
JOIN CDs ON Compositions.CD_ID = CDs.CD_ID
WHERE Compositions.BWV_Num = 'BWV 780';
