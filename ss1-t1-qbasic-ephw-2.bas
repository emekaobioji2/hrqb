INPUT "How many numbers do you wish to average? ", howmany%
IF howmany% <= 0 THEN
    PRINT "Not a valid quantity; must be greater than 0."
ELSE
    total! = 0.0 ' Set running total to zero.
    FOR count% = 1 TO howmany%
        PRINT "number"; count%;
        INPUT " ", value!
        total! = total! + value! ' Add next value to total.
    NEXT count%
    PRINT "The average value is"; total! / howmany%
END IF

