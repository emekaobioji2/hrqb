REM SOLVE A QUADRATIC EQUATION
CLS
INPUT "ENTER VALUE FOR A"; A
INPUT "ENTER VALUE FOR B"; B
INPUT "ENTER VALUE FOR C"; C
D = (B * B - 4 * A * C) ^ (1 / 2)
X = (-B + D) / 2 * A
Y = (-B - D) / 2 * A
PRINT "SOLUTION OF QUADRATIC EQUATION ARE"; X; Y
END

