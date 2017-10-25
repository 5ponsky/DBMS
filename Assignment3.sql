

-- Problem 1
SELECT Name, SUM(Enrollment) FROM Class JOIN Dept ON Class.Dept = Dept.Code GROUP BY Name;

-- Problem 2
SELECT Name, COUNT(Class) 
FROM Dept JOIN Class ON Class.Dept = Dept.Code 
WHERE (Room IS NOT NULL AND Assigned IS NOT NULL) AND ()

-- Problem 3
SELECT Name
FROM Class JOIN Dept ON Class.Dept = Dept.Code
WHERE Dept = (SELECT Dept, MAX(Dept) FROM Class WHERE Dept IN (SELECT MAX(Dept) FROM Class WHERE (Room IS NULL AND Assigned IS NULL) GROUP BY Dept) GROUP BY Dept);

SELECT Name
FROM Class JOIN Dept ON Class.Dept = Dept.Code
WHERE Dept = (SELECT MAX(Dept) FROM Class); WHERE (SELECT COUNT(Dept) FROM Class WHERE (Room IS NULL AND Assigned IS NULL));



SELECT B.Name, Count() FROM Building B WHERE B.Code IN
    (SELECT Bldg FROM Class C, Dept D WHERE (C.Assigned IS NOT NULL) AND (D.Code = C.Dept))  GROUP BY Name;

SELECT Dept FROM Class WHERE Assigned IS NOT NULL;

, COUNT(Course_No)

select Dept FROM Class WHERE Enrollment = (SELECT Min(Enrollment) FROM Class) GROUP BY Dept;

SELECT MAX(Dept) FROM Class WHERE Dept IN (SELECT COUNT(Dept) FROM Class) AND (Room IS NULL AND Assigned IS NULL);

SELECT MAX()