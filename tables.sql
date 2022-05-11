CREATE TABLE buildings(
buildNumber INT CHECK (buildNumber > 0),
floors INT CHECK (floors > 0),
nickname Varchar2(50) NOT NULL,
val FLOAT CHECK (val > 0.0),
constYear Varchar2(4),
PRIMARY KEY(buildNumber)
);


CREATE TABLE newBuilding(
buildNumber INT,
constPermit INT CHECK (constPermit > 0), 
PRIMARY KEY(buildNumber),
FOREIGN KEY(buildNumber) REFERENCES buildings);


CREATE TABLE renBuilding(
buildNumber INT,
renYear Varchar2(4), 
PRIMARY KEY(buildNumber),
FOREIGN KEY(buildNumber) REFERENCES buildings);


CREATE TABLE inspection(
idNumber INT CHECK (idNumber > 0),
firstName Varchar2(20) NOT NULL,
lastName Varchar2(20) NOT NULL,
inspecDate Date,
inspecResult Varchar2(10), 
inspComment Varchar2(100),
buildNumber INT,
FOREIGN KEY(buildNumber) REFERENCES buildings,
PRIMARY KEY(idNumber),
CONSTRAINT chk_rslt CHECK(inspecResult = 'Pass' OR inspecResult = 'Fail'));


CREATE TABLE tennets(
tennentID INT CHECK (tennentID > 0),
firstName Varchar2(20) NOT NULL,
midInitial Varchar2(1) NOT NULL,
lastName Varchar2(20) NOT NULL,
income FLOAT CHECK (income > 0.0),
creditScore INT CHECK (creditScore > 0),
PRIMARY KEY(tennentID));


CREATE TABLE floorPlan(
letter Varchar(1),
bedrooms INT CHECK(bedrooms > 0),
bathrooms INT CHECK(bathrooms > 0),
basePrice FLOAT CHECK(basePrice > 0.0),
area FLOAT CHECK(area > 0.0),
CONSTRAINT pk_floorPlan PRIMARY KEY(letter, bedrooms));


CREATE TABLE apartment(
aptNum INT CHECK(aptNum > 0),
direction Varchar2(5),
wood Varchar2(15) NOT NULL,
wallpaper Varchar2(15) NOT NULL,
bathColor Varchar2(30) NOT NULL, 
carColor Varchar2(30) NOT NULL,
kitAppColor Varchar2(30) NOT NULL,
buildNumber INT,
letter Varchar(1),
bedrooms INT,
PRIMARY KEY(aptNum, buildNumber), 
FOREIGN KEY(buildNumber) REFERENCES buildings,
CONSTRAINT fk_apartment FOREIGN KEY(letter, bedrooms) REFERENCES floorPlan,
CONSTRAINT chk_dir CHECK(direction = 'North' OR direction = 'East' OR direction = 'South' OR direction = 'West'));


CREATE TABLE features(
aptNum INT,
buildNumber INT,
feature Varchar2(30),
FOREIGN KEY(aptNum, buildNumber) REFERENCES apartment, 
CONSTRAINT pk_features PRIMARY KEY(aptNum, buildNumber, feature));


CREATE TABLE tenReferences(
tennentID INT,
tenReferences varchar2(300),
CONSTRAINT pk_tenReferences PRIMARY KEY(tennentID, tenReferences)); 


CREATE TABLE lease(
tennentID INT,
aptNum INT,
buildNumber INT,
PRIMARY KEY(tennentID),
FOREIGN KEY(aptNum, buildNumber) REFERENCES apartment);

CREATE VIEW rentPrice AS
SELECT aptNum, buildNumber, basePrice + 100 * COUNT(feature) rentPrice
FROM  apartment NATURAL JOIN floorPlan NATURAL JOIN features
GROUP BY aptNum, buildNumber, basePrice;


CREATE VIEW emptyAppt AS
SELECT aptNum, buildNumber
FROM apartment
MINUS
SELECT aptNum, buildNumber
FROM lease;

CREATE VIEW apptAmt AS
SELECT apartment.aptNum, apartment.buildNumber, COUNT(tennentID) aptAmt
FROM apartment 
LEFT JOIN lease ON apartment.aptNum = lease.aptNum AND apartment.buildNumber = lease.buildNumber
GROUP BY apartment.aptNum, apartment.buildNumber;

CREATE VIEW featFreq AS
SELECT feature, COUNT(feature) AS freq
FROM features
GROUP BY feature;
