# Embedded-SQL
This repository contains the external schema of a DB2 data base and uses embedded SQL (C) to solve the following questions:

(program check)
This application performs the following exceptional condition reporting on the
contents of the database in the order given, possibly providing in each case a
diagnostic report that starts on a separate line. Throughout, the current term
always refers to the most recent term recorded for a class. 

1. An office hour exception occurs if a professor has an office hour for a
course in a term but is not the the instructor for at least one class for the
course in that term. Report “Office hour exception(s):” if such an
exception exists, followed by a list of the exceptions, one per line. Each
exception should report the following with intervening single spaces: the
name of the professor (30 characters), the course number (5 characters),
then the term (5 characters).
2. An enrollment ambiguity exists for the current term if a student is enrolled
in two or more different sections of the same course. Report “Enrollment
ambiguity exception(s):” if this is not the case followed by a list of
exceptions, one per line. Each exception should report the following with
intervening single spaces: the name of the student (30 characters), the
course number (5 characters), and then an ascending list of section num-
bers (2 characters each).
3. A naming exception happens when two people, either a professor or a stu-
dent, have the same name. Report “Name ambiguity exception(s):” if
this is the case followed by a list of exceptions, one per line. Each exception
should report such an ambiguity in ascending alphabetical order on sepa-
rate lines by reporting the ambiguous name (30 characters) followed by the
keyword “(student)” if only students share the name, “(professor)” if
only teachers share the name, or “(student/profesor)” if both students
and teachers share the same name.

(program courserep)
The application is to print a report summarizing past enrollments for a course
with a course number to be supplied as an argument on the command line. The
first line of the output should contain the course number (5 characters) followed
by a single space and then followed by the course name (50 characters). Each
past term in which the course was offered should then be printed on a separate
line and in ascending order of the term and should list the following information
with intervening single spaces: the term (5 characters), the number of students
enrolled in all classes for that term (4 characters), the number of students who
were not assigned a grade (3 characters), and then the average grade obtained
for students that were assigned a grade rounded to the nearest integer value (2
characters)
