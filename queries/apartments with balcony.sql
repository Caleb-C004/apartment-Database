SELECT DISTINCT apartment.aptNum, aptAmt, wood,CONCAT(letter, bedrooms) AS floorPlan, rentPrice
FROM apartment 
LEFT JOIN rentPrice ON apartment.aptNum = rentPrice.aptNum AND apartment.buildNumber = rentPrice.buildNumber
LEFT JOIN lease ON apartment.aptNum = lease.aptNum AND apartment.buildNumber = lease.buildNumber
LEFT JOIN features ON apartment.aptNum = features.aptNum AND apartment.buildNumber = features.buildNumber
LEFT JOIN apptAmt ON apartment.aptNum = apptAmt.aptNum AND apartment.buildNumber = apptAmt.buildNumber
WHERE feature = 'Balcony';