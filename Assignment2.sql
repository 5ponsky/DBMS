


SELECT COUNT(*) FROM Class WHERE (Enrollment > 100) AND (Room = 0);

SELECT Room_No, Bldg FROM Rooms WHERE Capacity < (SELECT AVG(Capacity) FROM Rooms);

SELECT DISTINCT Name FROM Building WHERE Code IN (SELECT DISTINCT Bldg FROM Rooms WHERE Capacity > 50);

SELECT Name FROM Building WHERE Rooms = (SELECT MIN(Rooms) FROM (SELECT * FROM Building WHERE Rooms NOT IN (SELECT MIN(Rooms) FROM BUILDING)));

SELECT Name FROM Dept WHERE Bldg IN (SELECT Code FROM Building WHERE Rooms = (SELECT MAX(Rooms) FROM Building));