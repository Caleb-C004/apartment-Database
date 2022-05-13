UPDATE apartment
SET bathColor = 'Violet', carColor = 'Creme', kitAppColor = 'Silver'
WHERE buildNumer IN (SELECT *
                    FROM apartment 
                    LEFT JOIN emptyAppt ON apartment.aptNum = emptyAppt.aptNum AND apartment.buildNumber = emptyAppt.buildNumber
                    LEFT  JOIN renBuilding ON apartment.buildNumber = renBuilding.buildNumber
                    LEFT  JOIN lease ON apartment.aptNum = lease.aptNum AND apartment.buildNumber = lease.buildNumber
                    WHERE lease.tennentID IS NULL AND renYear < 2020);