DIM studentDatabase(10, 4)

'FN = Firstname, SN = Surname
INPUT "FN of student 1 is "; studentDatabase$(1, 1)
INPUT "SN of student 1 is "; studentDatabase$(1, 2)
INPUT "Age of student 1 is "; studentDatabase$(1, 3)
INPUT "Class of student 1 is "; studentDatabase$(1, 4)
PRINT

'student number 2
INPUT "FN of student 2 is "; studentDatabase$(2, 1)
INPUT "SN of student 2 is "; studentDatabase$(2, 2)
INPUT "Age of student 2 is "; studentDatabase$(2, 3)
INPUT "Class of student 2 is "; studentDatabase$(2, 4)
PRINT

'values entered
OPEN "C:\Users\emeka\Documents\ss1-t1-databases\ss1-t1-database1a.txt" FOR APPEND AS #1
PRINT #1, "FN typed for student 1 is "; studentDatabase$(1, 1)
PRINT #1, "SN typed for student 1 is "; studentDatabase$(1, 2)
PRINT #1, "Age typed for student 1 is "; studentDatabase$(1, 3)
PRINT #1, "Class typed for student 1 is "; studentDatabase$(1, 4)
PRINT #1,

PRINT #1, "FN typed for student 2 is "; studentDatabase$(2, 1)
PRINT #1, "SN typed for student 2 is "; studentDatabase$(2, 2)
PRINT #1, "Age typed for student 2 is "; studentDatabase$(2, 3)
PRINT #1, "Class typed for student 2 is "; studentDatabase$(2, 4)


END


