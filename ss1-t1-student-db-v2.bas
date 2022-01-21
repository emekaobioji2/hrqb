DIM studentDatabase$(10, 4)
OPEN "C:\Users\emeka\Documents\ss1-t1-databases\studentDatabase-v2.txt" FOR APPEND AS #1
FOR i = 1 TO 4 STEP 1
    PRINT "Input the data of student "; i
    INPUT "Firstname = "; studentDatabase$(i, 1)
    INPUT "Surname = "; studentDatabase$(i, 2)
    INPUT "Age = "; studentDatabase$(i, 3)
    INPUT "Class = "; studentDatabase$(i, 4)
NEXT

FOR i = 1 TO 4 STEP 1
    PRINT "Storing the data of student "; i
    PRINT #1, i; " "; studentDatabase$(i, 1)
    PRINT #1, i; " "; studentDatabase$(i, 2)
    PRINT #1, i; " "; studentDatabase$(i, 3)
    PRINT #1, i; " "; studentDatabase$(i, 4)
NEXT
CLOSE #1
END

