DIM studentDatabase$(10, 4)
INPUT "student number 1 firstname ="; firstname$
INPUT "student number 1 surname ="; surname$
INPUT "student number 1 age ="; age$
INPUT "student number 1 class ="; class$

'assign the values to the array
studentDatabase$(1, 1) = firstname$
studentDatabase$(1, 2) = surname$
studentDatabase$(1, 3) = age$
studentDatabase$(1, 4) = class$
PRINT studentDatabase$(1, 1)
PRINT studentDatabase$(1, 2)
PRINT studentDatabase$(1, 3)
PRINT studentDatabase$(1, 4)

'make our program to store the values in the HDD
OPEN "C:\Users\emeka\Documents\ss1-t1-databases\studentDatabase.txt" FOR APPEND AS #1
PRINT #1, studentDatabase$(1, 1)
PRINT #1, studentDatabase$(1, 2)
PRINT #1, studentDatabase$(1, 3)
PRINT #1, studentDatabase$(1, 4)
'CLOSE #1

'student number 2
INPUT "student number 2 firstname ="; firstname$
INPUT "student number 2 surname ="; surname$
INPUT "student number 2 age ="; age$
INPUT "student number 2 class ="; class$

'place in database in RAM
studentDatabase$(2, 1) = firstname$
studentDatabase$(2, 2) = surname$
studentDatabase$(2, 3) = age$
studentDatabase$(2, 4) = class$

'save on the HDD
PRINT #1, studentDatabase$(2, 1)
PRINT #1, studentDatabase$(2, 2)
PRINT #1, studentDatabase$(2, 3)
PRINT #1, studentDatabase$(2, 4)
CLOSE #1
END

