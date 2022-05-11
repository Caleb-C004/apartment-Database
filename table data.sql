INSERT INTO buildings VALUES(1, 3, 'New Beginning', 200000.00, '2005');
INSERT INTO buildings VALUES(2, 3, 'Horizon', 210000.00, '2006');
INSERT INTO buildings VALUES(3, 2, 'Bliss', 250000.00, '2010');
INSERT INTO buildings VALUES(4, 2, 'Sunset', 150000.00, '2000');
INSERT INTO buildings VALUES(5, 3, 'Sunrise', 275000.00, '2001');
INSERT INTO buildings VALUES(6, 3, 'Big Ben', 300000.00, '2008');
INSERT INTO buildings VALUES(7, 3, 'Starry Night', 260000.00, '2013');
INSERT INTO buildings VALUES(8, 2, 'Mona', 96000.00, '1996');
INSERT INTO buildings VALUES(9, 3, 'Lisa', 125000.00, '1996');
INSERT INTO buildings VALUES(10, 2, 'Dali', 115000.00, '2000');
INSERT INTO buildings VALUES(11, 3, 'Patience', 350000.00, '2015');
INSERT INTO buildings VALUES(12, 2, 'Courage', 180000.00, '2006');

INSERT INTO newBuilding VALUES(3, 08492);
INSERT INTO newBuilding VALUES(6, 09634);
INSERT INTO newBuilding VALUES(7, 15908);
INSERT INTO newBuilding VALUES(2, 76280);
INSERT INTO newBuilding VALUES(11, 46502);

INSERT INTO renBuilding VALUES(8, '2020');
INSERT INTO renBuilding VALUES(9, '2021');
INSERT INTO renBuilding VALUES(10, '2018');
INSERT INTO renBuilding VALUES(4, '2015');
INSERT INTO renBuilding VALUES(5, '2022');
INSERT INTO renBuilding VALUES(12, '2012');

INSERT INTO inspection VALUES(4652, 'Brandon', 'Jones', '20-FEB-2018', 'Pass', 'Building passed every parameter', 8);
INSERT INTO inspection VALUES(5620, 'Brandon', 'Jones', '05-APR-2019', 'Pass', 'Leaky hose connections, Stairs need updating soon', 5);
INSERT INTO inspection VALUES(7650, 'Saun', 'Tracy', '30-SEP-2018', 'Fail', 'Foundation needs to be lifted, and mold issue in some apartments', 4);
INSERT INTO inspection VALUES(9051, 'Chris', 'Broad', '15-NOV-2019', 'Pass', 'Building passed every parameter', 10);
INSERT INTO inspection VALUES(3844, 'Chris', 'Broad', '02-JUL-2020', 'Fail', 'Major foundation cracks. Needs new electrical system', 9);
INSERT INTO inspection VALUES(7002, 'Brandon', 'Jones', '06-MAR-2020', 'Pass', 'Building passed every parameter', 2);
INSERT INTO inspection VALUES(1056, 'Brandon', 'Jones', '09-APR-2021', 'Fail', 'Major damage from Tornado', 11);
INSERT INTO inspection VALUES(7966, 'Brandon', 'Jones', '18-MAY-2019', 'Fail', 'New HVAC system needed', 7);


INSERT INTO tennets VALUES(16520, 'Chad', 'K', 'Oneil', 3620.80, 590);
INSERT INTO tennets VALUES(46527, 'Bryce', 'L', 'Armstrong', 3096.12, 610);
INSERT INTO tennets VALUES(75063, 'Barack', 'O', 'Bama', 4009.90, 650);
INSERT INTO tennets VALUES(90532, 'George', 'A', 'Washington', 3067.89, 700);
INSERT INTO tennets VALUES(04652, 'Abraham', 'T', 'Lincoln', 5968.99, 655);
INSERT INTO tennets VALUES(64507, 'Vladamir', 'S', 'Zelensky', 6000.87, 715);
INSERT INTO tennets VALUES(30544, 'Georgy', 'B', 'Zhukov', 3600.00, 420);

INSERT INTO floorPlan VALUES('A', 3, 3, 800.00, 1250);
INSERT INTO floorPlan VALUES('B', 2, 2, 650.00, 860);
INSERT INTO floorPlan VALUES('B', 1, 2, 550.00, 725);
INSERT INTO floorPlan VALUES('B', 3, 2, 850.00, 1300);
INSERT INTO floorPlan VALUES('A', 2, 2, 700.00, 900);
INSERT INTO floorPlan VALUES('C', 1, 1, 500.00, 600);

INSERT INTO apartment VALUES(102, 'South', 'Oak', 'Floral', 'Green', 'Creme', 'Black', 8, 'C', 1);
INSERT INTO apartment VALUES(203, 'South', 'Oak', 'Fleur De Lance', 'Yellow', 'White', 'Black', 8, 'C', 1);
INSERT INTO apartment VALUES(105, 'North', 'Spruce', 'Checkered', 'Gold', 'White', 'White', 11,'B', 3);
INSERT INTO apartment VALUES(102, 'West', 'Birch', 'Green', 'Peach', 'Creme', 'White', 6,'B', 1);
INSERT INTO apartment VALUES(310, 'North', 'Pine', 'Beach', 'Blue', 'White', 'Silver', 3,'A', 2);
INSERT INTO apartment VALUES(213, 'East', 'Mahogany', 'Fortnite', 'Chardene', 'Hot Pink', 'Cherry Red', 1, 'B', 2);
INSERT INTO apartment VALUES(107, 'West', 'Jungle', 'Lavenders', 'Opal', 'Jet Black', 'Gold', 2, 'A', 2); 
INSERT INTO apartment VALUES(315, 'North', 'Mahogany', 'Fire', 'Deep Blue', 'Purple', 'RGB', 9, 'A', 3);
INSERT INTO apartment VALUES(112, 'South', 'Cedar', 'Lightning', 'Midnight', 'Black', 'Granite', 7, 'B', 2); 
INSERT INTO apartment VALUES(207, 'North', 'Mahogany', 'Ocean', 'Beach', 'Blue', 'Sand', 10, 'A', 3);
INSERT INTO apartment VALUES(211, 'South', 'Pecan', 'Racing', 'Forest Green', 'Burgandy', 'Bronze', 12, 'C', 1); 

INSERT INTO features VALUES(105, 11, 'Electric Fireplace');
INSERT INTO features VALUES(105, 11, 'Balcony');
INSERT INTO features VALUES(105, 11, 'Poolside');
INSERT INTO features VALUES(102, 8, 'Private Parking');
INSERT INTO features VALUES(203, 8, 'Private Parking');
INSERT INTO features VALUES(310, 3, 'Electric Fireplace');
INSERT INTO features VALUES(310, 3, 'Poolside');
INSERT INTO features VALUES(107, 2, 'Electric Fireplace');
INSERT INTO features VALUES(213, 1, 'Balcony');
INSERT INTO features VALUES(315, 9, 'Private Parking');
INSERT INTO features VALUES(112, 7, 'Balcony');
INSERT INTO features VALUES(207, 10, 'Balcony');
INSERT INTO features VALUES(102, 6, 'Poolside');
INSERT INTO features VALUES(102, 6, 'Skylight');
INSERT INTO features VALUES(211, 12, 'Beach Veiw');
INSERT INTO features VALUES(207, 10, 'Poolside');
INSERT INTO features VALUES(112, 7, 'Poolside');

INSERT INTO tenReferences VALUES(16520, 'Jason: 903-189-8877');
INSERT INTO tenReferences VALUES(16520, 'Bob: 903-467-2768');
INSERT INTO tenReferences VALUES(75063, 'George: 903-270-2467');
INSERT INTO tenReferences VALUES(90532, 'Andrew: 903-575-8765');
INSERT INTO tenReferences VALUES(90532, 'Jhon: 903-856-0867');
INSERT INTO tenReferences VALUES(04652, 'James: 903-037-4685');
INSERT INTO tenReferences VALUES(04652, 'Getty: 903-887-9648');

INSERT INTO lease VALUES(16520, 102, 8);
INSERT INTO lease VALUES(46527, 203, 8);
INSERT INTO lease VALUES(75063, 105, 11);
INSERT INTO lease VALUES(90532, 102, 6);
INSERT INTO lease VALUES(04652, 310, 3);
INSERT INTO lease VALUES(64507, 207, 10);
INSERT INTO lease VALUES(30544, 207, 10);