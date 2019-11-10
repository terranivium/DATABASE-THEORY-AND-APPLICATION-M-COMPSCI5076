DTA (M) Lab 6

Task 1: SQL SELECT Statements 'Dog'

0
SELECT name
FROM owner

1
SELECT *
FROM owner
WHERE phone like '0141%' or phone IS NULL

2
SELECT distinct(breedname)
FROM dog
ORDER BY breedname DESC

3
SELECT dog.kennelname
FROM dog
WHERE dog.name = dog.mothername 
OR dog.name = fathername 
OR dog.mothername IS NULL

4
SELECT dog.name, dog.breedname
FROM dog
ORDER BY dog.name DESC

(solution is different for 4 but query gives same result)

5
SELECT dog.name, owner.name , attendance.showname
FROM attendance, dog, owner
WHERE attendance.dogid = dog.dogid
AND owner.ownerid = dog.ownerid

6
SELECT dog.name, kennel.address, owner.phone
FROM kennel, attendance, owner, dog
WHERE attendance.dogid = dog.dogid
AND owner.ownerid = dog.ownerid
AND dog.kennelname = kennel.kennelname
AND attendance.place = 1

7
SELECT owner.name
FROM dog, kennel, owner
WHERE dog.ownerid = owner.ownerid
AND dog.kennelname = kennel.kennelname
AND kennel.address IS NULL

8
SELECT dog.name
FROM dog, owner
WHERE dog.ownerid = owner.ownerid
AND owner.ownerid = 43
AND dog.name != 'Laser'

Less specific:
SELECT A.name
FROM dog A, dog B
WHERE B.ownerid=A.ownerid
AND B.name = 'Laser'
AND B.name <> A.name

9
SELECT A.name, B.name, A.ownerid, B.ownerid
FROM dog A, dog B
WHERE A.ownerid=B.ownerid
AND A.name < B.name