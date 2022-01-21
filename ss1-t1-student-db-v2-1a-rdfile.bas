DIM studentDatabase$(10, 4)
OPEN "C:\Users\emeka\Documents\ss1-t1-databases\studentDatabase-v2.txt" FOR INPUT AS #1
FOR i = 1 TO 4 STEP 1
    PRINT "Read the data of student "; i
    INPUT #1, studentDatabase$(i, 1)
    INPUT #1, studentDatabase$(i, 2)
    INPUT #1, studentDatabase$(i, 3)
    INPUT #1, studentDatabase$(i, 4)

NEXT

FOR i = 1 TO 4 STEP 1
    PRINT "Displaying the data of student "; i
    PRINT "Firstname = "; studentDatabase$(i, 1)
    SLEEP
    PRINT "Surname = "; studentDatabase$(i, 2)
    SLEEP
    PRINT "Age = "; studentDatabase$(i, 3)
    SLEEP
    PRINT "Class "; studentDatabase$(i, 4)
NEXT
CLOSE #1
END

