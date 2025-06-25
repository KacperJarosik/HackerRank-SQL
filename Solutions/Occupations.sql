WITH Ranked AS (
    SELECT 
        Name,
        Occupation,
        ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS rn
    FROM OCCUPATIONS
)

SELECT
    d.Name AS Doctor,
    p.Name AS Professor,
    s.Name AS Singer,
    a.Name AS Actor
FROM
    (SELECT Name, rn FROM Ranked WHERE Occupation = 'Doctor') d
    FULL JOIN (SELECT Name, rn FROM Ranked WHERE Occupation = 'Professor') p ON d.rn = p.rn
    FULL JOIN (SELECT Name, rn FROM Ranked WHERE Occupation = 'Singer') s ON COALESCE(d.rn, p.rn) = s.rn
    FULL JOIN (SELECT Name, rn FROM Ranked WHERE Occupation = 'Actor') a ON COALESCE(d.rn, p.rn, s.rn) = a.rn
ORDER BY
    COALESCE(d.rn, p.rn, s.rn, a.rn);
