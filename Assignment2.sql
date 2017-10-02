


SELECT COUNT(*) FROM Class WHERE (Enrollment > 100) AND (Room = 0);

SELECT Room_No, Bldg FROM Rooms WHERE Capacity < (SELECT AVG(Capacity) FROM Rooms);

SELECT Name FROM Building WHERE (SELECT * FROM Rooms WHERE Capacity > 50);
