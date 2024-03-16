SELECT CDs.CD_Title, Compositions.Composition_Name
FROM CDs
JOIN Compositions ON CDs.CD_No = Compositions.CD_No
JOIN Performer ON CDs.Performer = Performer.Performer_Index
WHERE Performer.Performer = 'Glenn Gould';
