OPEN "names2.txt" FOR INPUT AS #1
DO
    INPUT #1, file_content$
    PRINT file_content$
LOOP WHILE EOF(1) = 0
CLOSE #1






