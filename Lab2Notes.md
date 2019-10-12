DTA(M): Lab 2 Notes

Task 1:

Relations:

Owner(owner name, phone) name + phone PK, owner name FK, cannot be NULL, used to see ownership of dog

Dog(Dog ID, mother, father, owner name, name, breed name, kennel) Dog ID PK, owner name FK

Breed(Breed ID) Breed ID PK & FK

Kennel(unique name, address, phone number) unique name PK and FK, cannot be null

Show(name, opening date, closing date) name + opening date PK, name FK, cannot be null (maybe unique ID attribute?)

Relationships:

Attendence (relation between dog and show)(show name, opening date, rank, dog) show name + opening date PK, dog FK


Task 2:

Researchers, Achademic Institutions, collaborations among researchers.

Researcher can be a prof or assistant.

three kinds of profs - lecturer, senior lecurer and full profs.

 For each institution, its name, country, and inauguration year.
 For each institution, the names of its schools, e.g., School of Law, School of Business, School
of Computing Science… A school belongs to exactly one institution.
 For each researcher, his/her name, year of birth, and current position (if any).
 An employment/position history, including information on all employments (start and end
date, position, and what school).
 Information about co-authorships, i.e., which researchers have co-authored a research
paper. The titles of common research papers should also be stored.
 For each researcher, information on his/her highest degree (BSc, MSc or PhD), including who
was the main supervisor (professor), and at what school.
 For each professor, information on what research projects (title, start date, and end date)
he/she is involved in, and the total amount of grant money for which he/she was the main
applicant.

Task: Given the above context, your task is to identify the following:
 Relations.
 For each identified relation, attach a set of attributes and their domains, e.g., real number,
date, text.
 Identify the primary/candidate keys of each relation.
 Identify the relationships between relations and define the foreign keys.
 Define whether a foreign key can be NULL or not.
 Based on the relations and their corresponding relationships you have identified, how we
could query/ask the database to: retrieve all the researchers from the School of Computing
Science whose highest degree is PhD and were supervised by the same supervisor. Plan
your query by determining which relations, attributes and relationships to involve.

Relations:

Researcher(rid, name, degree level, dob) 
RID PK

School(sid, name, institution) 
SID PK, Institution FK (references Institution)

Institution(iid, name, country, inaug. year) 
IID PK 

Research Project(rpid, title, start date end date, supervisor(s), author(s), grant/awards) 
rpid PK, supervisor || authors FK (both reference a researcher's ID)

Employment(rid, position, start end date(s), school, institution?) 
rid PK, school FK

TASK - employment(school == school of computing), researcher(degree == PHD), is researchProject(author), has researchProject(supervisor == x).


Task 3:

Relations:

Emp(eid, ename, age, salary)
Works(eid, did, pcttime)
Dept(did, dname, budget, managerid)

3.1: The Dept (x) relation must be carefully altered, it is ok to delete manager id as 1:1 manager to dept. budget affects emp(salary) salary analysis reliability for employee. it also creates scenario that some employees will not be assigned to a set of WORKS (or clock pcctime) via did @ x DEPT.

3.2: Deletion can only be completed if tuple abides by following constraints: all current dept employees must be set to works in another/replacement did and be assigned pcttime accordingly. (Budget reassigned? Manager reassigned? Optionals.)

3.3: 

Relations:

customer(cust_id, name, street_address, city) 
cust_id PK, FK (references borrower)

loan(loan_id, amount) 
loan_id PK, FK (references borrower)

borrower(cust_id, loan_id, access_date) 
cust_id + loan_id PK, cust_id FK (referneces customer),loan_id FK (references loan)

3.4:

employee(employee_id, name)
eid PK, eid FK (references works_for), manager_id FK (references works_for)

works_for(employee_id, manager_id)
employee_id + manager_id PK, manager_id FK, employee_id FK

3.5:

employee(person_name, street, city)
person_name + street PK

works(person_name, company_name, salary)
person_name, company_name, salary PK

company(company_name, city)
company_name, city PK

3.6:

It is possible, however we would be better to use a unique ID, as when the database has more tuples inserted we may run into issues.

3.7:

Person(ssn, name, gender, job, studio, title, year)
SSN PK - FK (studio) refs Studio, FK (title, year) refs Movie

Category(cat)
PK, FK

Movie(title, year, length, director, studio, cat)
title, year PK - FK (director) refs Person (ssn), FK (studio) refs Studio, FK (cat) refs Category

Cast(ssn, title, year, character)
SSN, Title, Year PK - FK (ssn) refs Person, FK (title, year) refs Movie

Studio(studio, city)
Studio PK


