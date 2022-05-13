SELECT CONCAT(apartment.letter, apartment.bedrooms) AS floorPlan, floorPlan.bedrooms, floorPlan.bathrooms, rentPrice, floorPlan.area
FROM apartment 
LEFT JOIN floorPlan ON apartment.letter = floorPlan.letter AND apartment.bedrooms = floorPlan.bedrooms
LEFT JOIN lease ON apartment.aptNum = lease.aptNum AND apartment.buildNumber = lease.buildNumber
LEFT JOIN tennets ON lease.tennentID = tennets.tennentID 
LEFT JOIN tenReferences ON lease.tennentID = tenReferences.tennentID
LEFT JOIN rentPrice ON apartment.aptNum = rentPrice.aptNum AND apartment.buildNumber = rentPrice.buildNumber
WHERE firstName IS NOT NULL AND tenReferences IS NULL
ORDER BY area DESC;