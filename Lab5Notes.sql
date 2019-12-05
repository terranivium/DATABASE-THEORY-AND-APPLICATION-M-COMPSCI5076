DTA(M) Lab 5 Notes

Relations:

CREATE TABLE Researcher(
ID int PRIMARY KEY,
name VARCHAR(50),
DOB INT);

CREATE TABLE Professor(
ID int REFERENCES Researcher(ID),
grants INT);

CREATE TABLE Paper(
ID int PRIMARY KEY,
title VARCHAR(50));

CREATE TABLE Position(
researcherID int REFERENCES Researcher(ID),
start DATE,
end DATE,
schoolName VARCHAR(50),
institutionName VARCHAR(50),
FOREIGN KEY (schoolName,institutionName) REFERENCES School(name,insitutionName),
PRIMARY KEY (researcherID,start,schoolName,institutionName));

CREATE TABLE Project(
ID int PRIMARY KEY,
title VARCHAR(50),
start DATE,
end DATE);

CREATE TABLE School(
name VARCHAR(50),
instititionName VARCHAR(50) REFERENCES Institution(name),
PRIMARY KEY (name, instititionName));

CREATE TABLE Institution(
name VARCHAR(50),
country VARCHAR(50),
inauguration year INT,
PRIMARY KEY (name, country));

CREATE TABLE Author(
researcherID INT REFERENCES Researcher(ID),
paperID INT REFERENCES Paper(ID),
PRIMARY KEY (researcherID, paperID));

CREATE TABLE HighDegree(
studentID INT REFERENCES Researcher(ID),
professorID INT REFERENCES Professor(ID),
projectID INT REFERENCES Project(ID),
schoolName VARCHAR(50),
institutionName VARCHAR(50),
highDegree VARCHAR(50),
FOREIGN KEY (schoolName,institutionName) REFERENCES School(name,insitutionName),
PRIMARY KEY (professorID, studentID, projectID));

--not sure if this is the best solution? hard to tell from spec.
