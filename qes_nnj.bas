REM SOLVE A QUADRATIC EQUATION
PRINT "Ax^2+Bx+C=0"
INPUT "A=", A
INPUT "B=", B
INPUT "C=", C
D = B * B - 4 * A * C
IF D > 0 THEN
    DS = SQR(D)
    PRINT "REAL ROOTS by daniel nneji:", (-B - D) / (2 * A), (-B - D) / (2 * A)
ELSE
    IF D = 0 THEN
        PRINT "DUPLICATE ROOT:", (-B) / (2 * A)
    ELSE
        DS = SQR(-D)
        PRINT "COMPLEX CONJUGATE ROOTS:", (-B / (2 * A)); "+/-"; DS / (2 * A); "i"
    END IF
END IF

