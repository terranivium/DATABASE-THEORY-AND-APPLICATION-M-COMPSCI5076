Lab 4 Tasks DTA(M)

Task 1:
	
	1.1. 
		The table is in the first normal form.
	1.2. 
		The NIN is the PK in combination with the contract number, this combination is unique for every Employee, and allows for query of every other attribute, giving both employee inforand company info.

	1.3-6.
		R(NIN, Contract No, Hours, Employee Name, Company ID, Company Location)

		NIN, ContractNo (PK)
		NIN: partial dependency on the PK
		ContractNo: partial dependency on the PK

		HOURS: WHOLE PK
		EMPLOYEENAME: NIN
		COMPANYID/LOCATION: ContractNo

		Staff Details(NIN, Employee Name)
		Staff Contract(NIN, Contract No., hours)
		Contract (Contract No., CompanyID)
		Company(CompanyID, Company Location)

	1.7.
		Staff Details(NIN, Employee Name)
		Primary key: NIN
		Foreign key: None

		Staff Contract(NIN, ContractNo, Hours)
		Primary key: NIN, ContractNo
		Foreign key: NIN references Staff Details(NIN)


		Contracts(NompanyNo, CompanyID)
		Primary key: ContractNo
		Foreign key: CompanyID references Company(CompanyID)

		Company(CompanyID, CmpanyLocation)
		Primary key: CompanyID
		Foreign key: None

Task 2:

	2.1, 2.

		ARTICLES(ID, title, journal, issue, year, startpage, endpage, TR-ID)
		1. (ID) 
			Key - No 
			FD? - Yes
		2. (ID, TR-ID) 
			Key - Yes 
			FD? - No
		3. (ID, title, TR-ID) 
			Key - No 
			FD? - Yes
		4. (title) 
			Key - No 
			FD? - No
		5. (title, year) 
			Key - No 
			FD? - Yes
		6. (startpage, journal, issue) 
			Key - No 
			FD? - No

	Normalise to BCNF

		ARTICLES(ID, title, journal, issue, year, startpage, endpage, TR-ID)

		Article1(ID, title, journal, issue, startpage, endpage)
		Article2(ID, TR-ID)
		R2(Journal, Issue, Year)


