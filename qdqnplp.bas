DO UNTIL result$ = CHR$(27)
    CLS
    INPUT "A=", a
    INPUT "B=", b
    INPUT "C=", c
    INPUT "maximum x value = ", maxXValue
    minXValue = -1 * maxXValue
    maxYValue = maxXValue
    minYValue = minYValue
    SCREEN 2
    WINDOW (minXValue, maxYValue)-(maxXValue, minYValue)
    CALL drawXAxis(minXValue, maxXValue, minYValue, maxYValue)
    CALL drawYAxis(minXValue, maxXValue, minYValue, maxYValue)
    CALL drawGraph(minXValue, maxXValue, a, b, c)
    PRINT "press ESC to quit the program and ENTER to continue"
    result$ = INPUT$(1)
LOOP
END
SUB drawXAxis (minXValue, maxXValue, minYValue, maxYValue)
    yMidPoint = ((maxYValue - minYValue) / 2) + minYValue
    LINE (minXValue, yMidPoint)-(maxXValue, yMidPoint)
END SUB
SUB drawYAxis (minXValue, maxXValue, minYValue, maxYValue)
    xMidPoint = ((maxXValue - minXValue) / 2) + minXValue
    LINE (xMidPoint, minYValue)-(xMidPoint, maxYValue)
END SUB
SUB drawGraph (minXValue, maxXValue, a, b, c)
    FOR i = minXValue TO maxXValue - 1
        j1 = (a * (i ^ 2)) + (b * i) + c
        j2 = (a * ((i + 1) ^ 2)) + (b * (i + 1)) + c
        LINE (i, j1)-(i + 1, j2), 1
    NEXT
END SUB

