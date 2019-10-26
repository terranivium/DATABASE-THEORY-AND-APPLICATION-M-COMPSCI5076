Lab 3 DTA(M)

1.1: Updating the adress of student(SID:41) would mean that two tuples would need to be uniquely updated, both entry 1 and 4. 

1.2: By dropping the subject maths in tuple two containing the details of ID42, the subject field becomes null.

1.3: In order to insert a student with ID 44, a new tuple must be made for each subject he takes. For now he would be created with a null subject field but this would need to be changed upon selection of subjects, as well as additional tuples created for the other subjects, creating a lot of dulicate and unnecessary data store.

1.4: This table is not in 1NF, in order to do so we would need to create unnecessary duplicate tuple entries.

1.5: This table is in 2NF no partial dependancies.

R(Tournament, Year, Winner, WDOB)
	PK			PK		 

2NF:

R(Tournament, Year, Winner)
	PK			PK		FK

R(Winner, WDOB)
	PK		


2.1: Currently in 1NF.

	Description is uniquely identified (FD) by Product ID

	R(Product ID, Description)
		PK
	R(Order No, Product ID)
		PK			FK

2.2: Currently not in 2NF. 

	Student(Stud_ID, Name)
	Course(Course_ID, Units)
	Student_Course(Stud_ID, Course_ID)

2.3: Student_Grade_Report(StudentNo, StudentName, CourseNo, CourseName, InstructorName, Grade)


	Student(StudentNo, StudentName)
	Student_Course(StudentNo, CourseNo, Grade)
	Course(CourseNo, CourseName, InstructorName)

2.4: R(ABCDE)

	A > BCDE

	A > E, so B > E, C > E, D > E

	BC > ADE

	BD > ACE

	C > D, but not D > C

	A Should be considered PK.




