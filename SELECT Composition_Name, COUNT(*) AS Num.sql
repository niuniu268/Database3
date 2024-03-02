SELECT Composition_Name, COUNT(*) AS Num_Recordings
FROM Compositions
GROUP BY Composition_Name
HAVING COUNT(*) > 1;
