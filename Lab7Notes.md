DTA(M) Lab 7 Task Notes

Task 1: Advanced SQL SELECT Statements ‘Dog’ Database

** NOTE TO EXPERIMENTI WITH INNER-OUTER, ASSESS STACK **

1. NOT FROM SOLUTIONS
SELECT d.name
FROM DOG AS d, OWNER AS o
WHERE d.ownerid = o.ownerid
AND d.name < 'Laser'



2. NOT FROM SOLUTIONS
SELECT d
FROM DOG AS d, KENNEL AS k
WHERE d.kennelname = k.kennelname
AND d.kennelname LIKE 'Novar kennel club'
OR d.kennelname LIKE 'Canine kennel club' 
OR d.kennelname LIKE 'Island kennel club'

3.
SELECT d.name, o.name
FROM DOG AS d, OWNER AS o
WHERE d.ownerid = o.ownerid
AND d.dogid NOT IN
(SELECT ATTENDANCE.dogid
FROM ATTENDANCE)
ORDER BY o.name

4. NOT FROM SOLUTIONS (ISSUE GETTING 3 FROM SOLUTION?)
SELECT d.name, o.name
FROM DOG AS d, OWNER AS o
WHERE d.ownerid = o.ownerid
AND d.dogid IN
(SELECT a.dogid
FROM ATTENDANCE AS a
WHERE a.place = 1)
ORDER BY o.name

5. SOLUTION, slightly unclear go over!
SELECT DISTINCT(A1.dogid), D1.name
FROM ATTENDANCE AS A1, DOG AS D1
WHERE A1.place > ANY (
SELECT A2.place
FROM ATTENDANCE AS A2)
AND D1.dogid = A1.dogid

6. FROM SOLUTIONS (SEE 4.)
SELECT DISTINCT(A1.dogid), D1.name
FROM ATTENDANCE AS A1, DOG AS D1
WHERE A1.place <= ALL (
SELECT A2.place
FROM ATTENDANCE AS A2)
AND D1.dogid = A1.dogid

7. SELECT Dog.name as name, Attendance.place*100 AS REWARD 
FROM Dog, Attendance 
WHERE Attendance .place <=3 
AND Dog.dogid = Attendance.dogid ***

8. FROM SOLUTIONS
SELECT COUNT(DISTINCT(dogid))
FROM ATTENDANCE

9. FROM SOLUTIONS
SELECT AVG(place) AS AVERAGE
FROM ATTENDANCE, DOG
WHERE DOG.dogid = ATTENDANCE.dogid
AND Dog.name LIKE '%a%'

10. FROM SOLUTIONS, OBSERVE ORDER OF WHERE STATEMENTS/VALUES
SELECT SHOW.showname, COUNT(DOG.dogid)
FROM SHOW, ATTENDANCE, DOG
WHERE SHOW.showname = ATTENDANCE.showname
AND ATTENDANCE.dogid = DOG.dogid
GROUP BY SHOW.showname

11.
SELECT OWNER.name, COUNT(DOG.dogid)
FROM OWNER, DOG
WHERE DOG.ownerid = OWNER.ownerid
GROUP BY OWNER.name

12. NOT CHECKED, FROM SOLUTIONS
SELECT Kennel.kennelname,COUNT(Dog.dogid) as Quantity
FROM Kennel, Dog
WHERE Dog.kennelname = Kennel.kennelname
GROUP BY Kennel.kennelname
ORDER BY Quantity DESC
LIMIT 1