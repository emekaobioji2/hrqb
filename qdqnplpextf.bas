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
'$INCLUDE: 'PROCLIB.BM'
