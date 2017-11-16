-- Problem 1
SELECT Dept, Course_No, Phone FROM Class JOIN Dept ON Class.Dept = Dept.Code WHERE TO_DATE(Assigned) > TO_DATE(SYSDATE);

-- Problem 2
SELECT DISTINCT Name, Contact, TO_CHAR(Assigned, 'DD') FROM Class JOIN Dept ON Class.Dept = Dept.Code WHERE TO_DATE(Assigned) BETWEEN (TO_DATE(SYSDATE) - 7) AND (TO_DATE(SYSDATE));

-- Problem 3
SELECT Room_No, Name, TO_CHAR(Assigned, 'DD'), DECODE(AV, 'Y ', 'Yes', 'N ', 'No') FROM Rooms JOIN Dept ON Rooms.Bldg = Dept.Bldg JOIN Class ON Class.Dept = Dept.Code WHERE TO_DATE(Assigned) LIKE '%%-OCT-17';

-- Problem 4
SELECT Building.Name, COUNT(DISTINCT Class.Room) FROM Class JOIN Rooms ON Class.Room = Rooms.Room_No RIGHT JOIN Building ON Rooms.Bldg = Building.Code GROUP BY Building.Name;

-- Problem 5
CREATE VIEW asgn4 (Building_name, num_depts, num_classes) AS (
    SELECT Building.Name, DECODE(COUNT(DISTINCT Class.Dept), 0, 'none', COUNT(DISTINCT Class.Dept)) AS Depts, DECODE(COUNT(DISTINCT concat(Class.Course_No, Class.Dept)), 0, 'none', COUNT(DISTINCT concat(Class.Course_No, Class.Dept))) AS Classes FROM Rooms LEFT JOIN Class ON Rooms.Room_No = Class.Room JOIN Building ON Rooms.Bldg = Building.Code GROUP BY Building.Name
);