
OPEN "names1.txt" FOR APPEND AS #1
PRINT #1, "Chrisantus Obiora"
CLOSE #1
OPEN "names2.txt" FOR APPEND AS #2
PRINT #2, "Anthony Ozoh"
PRINT #2, "Daniel Nneji"
CLOSE #2
OPEN "names2.txt" FOR INPUT AS #2
DO
    INPUT #2, file_content$
    PRINT file_content$
LOOP WHILE EOF(2) = 0
CLOSE #2
PRINT "---------"
OPEN "names3.txt" FOR BINARY AS #3
INPUT file_content$
position = 1
DO WHILE file_content$ <> "end"
    PUT #3, position, file_content$
    INPUT file_content$
    position = position + 1
LOOP
CLOSE #3






