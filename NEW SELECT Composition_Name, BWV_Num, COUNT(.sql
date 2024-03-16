SELECT Composition_Name, BWV_Num, COUNT(*) AS Num_Recordings
FROM Compositions
GROUP BY Composition_Name, BWV_Num
HAVING COUNT(*) > 1;
