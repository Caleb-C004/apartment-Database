SELECT val, nickname, COUNT(aptNum) openApartments
FROM buildings LEFT JOIN renBuilding ON buildings.buildNumber = renBuilding.buildNumber 
LEFT JOIN newBuilding ON buildings.buildNumber = newBuilding.buildNumber 
LEFT JOIN emptyAppt ON buildings.buildNumber = emptyAppt.buildNumber
WHERE renYear > 2019 OR constYear > 2019 
GROUP BY val, nickname;