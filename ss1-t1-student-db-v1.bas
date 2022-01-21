DIM studentDatabase$(10, 4)
FOR i = 1 TO 10 STEP 1
    PRINT "The firstname of student "; i; ":"
    INPUT studentDatabase$(i, 1)
    PRINT "The surname of student "; i; ":"
    INPUT studentDatabase$(i, 2)
    PRINT "The age of student "; i; ":"
    INPUT studentDatabase$(i, 3)
    PRINT "The class of student "; i; ":"
    INPUT studentDatabase$(i, 4)
NEXT

'make our program to store the values in the HDD
OPEN "C:\Users\emeka\Documents\ss1-t1-databases\studentDatabase-v1.txt" FOR APPEND AS #1
FOR i = 1 TO 10
    PRINT #1, "The firstname of student "; i; " is "; studentDatabase$(i, 1)
    PRINT #1, "The surname of student  "; i; " is "; studentDatabase$(i, 2)
    PRINT #1, "The age of student "; i; " is "; studentDatabase$(i, 3)
    PRINT #1, "The class of student "; i; " is "; studentDatabase$(i, 4)
NEXT
CLOSE #1
END

