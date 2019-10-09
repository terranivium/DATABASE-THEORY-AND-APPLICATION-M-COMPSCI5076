DTA(M): Lab 2 Notes

Researchers, Achademic Institutions, collaborations.

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


Step 1: Find instances of Assistant and Professor with position in school of computing.

Step 2: Find instances of result(step 1) with degree level PHD. 

Step 3: Find research paper relationships between assistant and professor with common supervisor attribute.