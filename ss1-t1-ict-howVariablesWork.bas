DO UNTIL keyPressed$ = CHR$(27)
    INPUT "Think up a number between 1 and 6, and type it"; numberInMind%
    PRINT
    IF numberInMind% >= 1 AND numberInMind% <= 6 THEN

        PRINT "Multiply the number chosen by 9"
        PRINT
        DO UNTIL keyPressed$ = CHR$(99)
            PRINT "press c to continue "
            PRINT
            keyPressed$ = INPUT$(1)
        LOOP
        keyPressed$ = "0"
        numberInMind% = numberInMind% * 9

        PRINT "Multiply the number chosen by 111"
        PRINT
        DO UNTIL keyPressed$ = CHR$(99)
            PRINT "press c to continue "
            PRINT
            keyPressed$ = INPUT$(1)
        LOOP
        keyPressed$ = "0"
        numberInMind% = numberInMind% * 111

        PRINT "Multiply the product by 1001"
        DO UNTIL keyPressed$ = CHR$(99)
            PRINT "press c to continue "
            PRINT
            keyPressed$ = INPUT$(1)
        LOOP
        keyPressed$ = "0"
        numberInMind% = numberInMind% * 1001

        PRINT "Divide the product by 7"
        DO UNTIL keyPressed$ = CHR$(99)
            PRINT "press c to continue "
            PRINT
            keyPressed$ = INPUT$(1)
        LOOP
        keyPressed$ = "0"
        numberInMind% = numberInMind% / 7

        DO UNTIL keyPressed$ = CHR$(99)
            PRINT "press c to continue "
            PRINT
            keyPressed$ = INPUT$(1)
        LOOP
        keyPressed$ = "0"
        PRINT "The quotient will contain the digits 1, 2, 4, 5, 7, and 8."
        DO UNTIL keyPressed$ = CHR$(121)
            PRINT "The last statement is true yes(y) or no(n)"
            PRINT
            keyPressed$ = INPUT$(1)
            IF keyPressed$ = "n" THEN
                PRINT "Please, consider making the variable holding the results of the operations you executed on the number you thought up a long integer by replacing % by &"
                PRINT
                GOTO A
            END IF
        LOOP
        PRINT "The original number chosen is now ="; numberInMind%
        PRINT
    ELSE
        PRINT "Number chosen should be between 1 and 6"
        PRINT
    END IF
    A: PRINT "press ESC to quit the program and ENTER to rerun"
    PRINT
    keyPressed$ = INPUT$(1)
    CLS
LOOP


