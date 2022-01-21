OPEN "binarycodes4ram.txt" FOR OUTPUT AS #1
PRINT #1, "base 10"; ","; "binary code (base 2)"; ","; "represented symbol"
FOR i = 255 TO 1 STEP -1
    PRINT
    PRINT #1, i; ","; Decimal2Binary$(i); ","; CHR$(i)
    'SLEEP 0.5
    ' CLS
NEXT
CLOSE #1
FUNCTION Decimal2Binary$ (number&)
    IF number& = 0 THEN EXIT SUB
    DO
        remain% = ABS(number& MOD 2) ' remainder is used to create binary number
        number& = number& \ 2 ' move up one exponent of 2 with integer division
        Bin$ = LTRIM$(STR$(remain%)) ' make remainder a string number
        Binary$ = Bin$ + Binary$ ' add remainder to binary number
    LOOP UNTIL number& = 0
    'PRINT "Binary number = " + Binary$ 'binary result
    Decimal2Binary$ =    STRING$(8-LEN(Binary$), "0") + Binary$
END FUNCTION

