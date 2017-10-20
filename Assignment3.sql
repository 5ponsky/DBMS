


SELECT SUM(C.Enrollment) FROM Class C GROUP BY Dept;

SELECT B.Name, COUNT(R.Rooms) FROM Rooms R, Building B WHERE GROUP BY B.Name;