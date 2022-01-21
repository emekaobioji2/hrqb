vx1 = 0
vy1 = 0
vx2 = 1000
vy2 = 1000
x1 = -10
y1 = 10
x2 = 10
y2 = -10
SCREEN 1
REM VIEW (vx1, vy1)-(vx2, vy2)
WINDOW (x1, x2)-(y1, y2)

CALL paintScreenWhite(vx1, vy1, vx2, vy2)
CALL drawXAxis(x1, y1, x2, y2)
CALL drawYAxis(x1, y1, x2, y2)
CALL quadEqn(1, 1, -12)
END
SUB paintScreenWhite (vx1, vy1, vx2, vy2)
    FOR i = vx1 TO vx2
        FOR j = vy1 TO vy2
            PSET (i, j)
        NEXT
    NEXT
END SUB
SUB drawXAxis (x1, y1, x2, y2)
    FOR i = x1 TO x2
        PSET (i, 0)
    NEXT
END SUB
SUB drawYAxis (x1, y1, x2, y2)
    FOR i = y1 TO y2
        PSET (0, i)
    NEXT
END SUB
SUB quadEqn (a, b, c)
    FOR x = -10 TO 10
        y = (a * (x ^ 2)) + (b * x) + c
        PSET (x, y)
    NEXT
END SUB


