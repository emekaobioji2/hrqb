'when run, press any key for program to wake up since sleep duration not defined
minXValue = 0
minYValue = 0
maxXValue = 200
maxYValue = 200
SCREEN 1
'WINDOW (minXValue, maxYValue)-(maxXValue, minYValue)
FOR x2 = minXValue TO maxXValue STEP 1
    LINE (minXValue, minYValue)-(x2, maxYValue), '(x2 MOD 4) + 1
    SLEEP
NEXT
FOR x2 = maxXValue TO minXValue STEP -1
    LINE (maxXValue, minYValue)-(x2, maxYValue), '(x2 MOD 4) + 1
    SLEEP
NEXT
FOR y2 = maxYValue TO minYValue STEP -1
    LINE (minXValue, minYValue)-(maxXValue, y2), '(y2 MOD 4) + 1
    SLEEP
NEXT
END

