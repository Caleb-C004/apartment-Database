SELECT nickname, val, SUM(area) area
FROM buildings NATURAL JOIN apartment NATURAL JOIN floorPlan
WHERE constYear < 2010
GROUP BY nickname, val
ORDER BY area ASC;