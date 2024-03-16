SELECT CDs.CD_Title, Performer.Performer, Compositions.Composition_Name
FROM CDs
JOIN Compositions ON CDs.CD_No = Compositions.CD_No
JOIN Performer ON CDs.Performer = Performer.Performer_Index
WHERE Compositions.BWV_Num = 'BWV 780';
