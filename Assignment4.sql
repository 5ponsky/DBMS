-- Problem 1
SELECT Dept, Course_No, Phone FROM Class JOIN Dept ON Class.Dept = Dept.Code WHERE TO_DATE(Assigned) > TO_DATE(SYSDATE);

-- Problem 2
SELECT DISTINCT Name, Contact, TO_CHAR(Assigned, 'DD') FROM Class JOIN Dept ON Class.Dept = Dept.Code WHERE TO_DATE(Assigned) BETWEEN (TO_DATE(SYSDATE) - 7) AND (TO_DATE(SYSDATE));

-- Problem 3
SELECT Room_No, Name, TO_CHAR(Assigned, 'DD'), DECODE(AV, 'Y ', 'Yes', 'N ', 'No') FROM Rooms JOIN Dept ON Rooms.Bldg = Dept.Bldg JOIN Class ON Class.Dept = Dept.Code WHERE TO_DATE(Assigned) LIKE '%%-OCT-17';

-- Problem 4
SELECT Name, COUNT(Assigned) FROM Building FULL OUTER JOIN Rooms ON Building.Code = Rooms.Bldg FULL OUTER JOIN Class ON Rooms.Room_No = Class.Room WHERE Building.Code IN (SELECT Bldg FROM Rooms JOIN Class ON Rooms.Room_No = Class.Room WHERE Assigned IS NOT NULL) GROUP BY Building.Name;

SELECT * FROM Rooms JOIN Class ON Rooms.Room_No = Class.Room WHERE Assigned IS NOT NULL;

, COUNT(*) 