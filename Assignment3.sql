


SELECT SUM(C.Enrollment) FROM Class C GROUP BY Dept;

SELECT Name FROM Building JOIN 


SELECT B.Name, Count() FROM Building B WHERE B.Code IN
    (SELECT Bldg FROM Class C, Dept D WHERE (C.Assigned IS NOT NULL) AND (D.Code = C.Dept))  GROUP BY Name;

SELECT Dept FROM Class WHERE Assigned IS NOT NULL;