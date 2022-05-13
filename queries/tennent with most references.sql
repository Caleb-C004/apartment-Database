SELECT firstName, midInitial, lastName, creditScore, COUNT(tenReferences) AS refNum, aptNum
FROM tennets 
LEFT JOIN tenReferences ON tennets.tennentID = tenReferences.tennentID
LEFT JOIN lease ON tennets.tennentID = lease.tennentID
HAVING COUNT(tenReferences) IN (SELECT MAX(refNum)
                FROM(
                SELECT COUNT(tenReferences) AS refNum
                FROM tenReferences
                GROUP BY tennentID))
GROUP BY firstName, midInitial, lastName, creditScore, aptNum;