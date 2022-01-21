INPUT "A =", a
INPUT "B =", b
INPUT "C =", c
bsq = b * b
mb = -1 * b
fac = 4 * a * c
IF bsq - fac < 0 THEN
    PRINT "complex roots"
ELSE
    PRINT "root 1=", (mb + Math.Sqrt(bsq - fac)) / (2 * a)
    PRINT "root 2=", (mb - Math.Sqrt(bsq - fac)) / (2 * a)
END IF




