SELECT idNumber, floors, constYear, firstName, lastName, inspecDate
FROM buildings NATURAL JOIN inspection NATURAL JOIN newBuilding
WHERE inspecResult = 'Fail';