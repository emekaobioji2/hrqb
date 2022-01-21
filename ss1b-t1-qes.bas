PRINT "This software solves any type of quadratic equation"
PRINT
PRINT "A quadratic equation is defined as follows:"
PRINT "y=Ax2+Bx+C where A, B, C are constants"
PRINT
INPUT "Please type in the value of A"; A
INPUT "Please type in the value of B"; B
INPUT "Please type in the value of C"; C
PRINT
PRINT "Calculating this difficult equation";

'to simulate thinking
FOR i = 1 TO 3 STEP 1
    SLEEP 1
    PRINT ".";
NEXT
x1 = (-B + SQR(B * B - (4 * A * C))) / (2 * A)
x2 = (-B - SQR(B * B - (4 * A * C))) / (2 * A)
IF (x1 = x2) THEN
    PRINT
    PRINT "The root of the equation is"; x1
ELSE
    PRINT "the roots of the equation are"; x1; x2
END IF
END


