SCREEN 1
minXValue = 0
minYValue = 0
maxXValue = 200
maxYValue = 200
WINDOW (minXValue, maxYValue)-(maxXValue, minYValue)
FOR x1 = minXValue TO maxXValue STEP 1
    FOR x2 = maxXValue TO minXValue STEP -1
        LINE (x1, minYValue)-(x2, maxYValue), x1 MOD 4
    NEXT
NEXT
END


LINE (0, 0)-(200, 200), 2
LINE (200, 0)-(0, 200), 1
