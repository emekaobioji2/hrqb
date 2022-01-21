DIM studentDatabase$(10, 4)
OPEN "C:\Users\emeka\Documents\ss1-t1-databases\studentDatabase-v2.txt" FOR INPUT AS #1
FOR i = 1 TO 4 STEP 1
    PRINT "Retrieving the data of student "; i
    SLEEP 5
    INPUT studentDatabase$(i, 1)
    SLEEP 5
    INPUT #1, studentDatabase$(i, 2)
    SLEEP 5
    INPUT #1, studentDatabase$(i, 3)
    SLEEP 5
    INPUT #1, studentDatabase$(i, 4)
NEXT
CLOSE #1

FOR i = 1 TO 4 STEP 1
    PRINT "Displaying the data of student "; i
    PRINT studentDatabase$(i, 1)
    SLEEP 5
    PRINT studentDatabase$(i, 2)
    SLEEP 5
    PRINT studentDatabase$(i, 3)
    SLEEP 5
    PRINT studentDatabase$(i, 4)
NEXT
END

