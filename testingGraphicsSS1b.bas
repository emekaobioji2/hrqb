'to draw on a screen
SCREEN 1
COLOR 1, 0
'to colour a pixel
FOR xaxis = 0 TO 600
    FOR yaxis = 0 TO 300
        IF xaxis = yaxis THEN
            PSET (xaxis, yaxis), 3
        END IF
        'SLEEP (1)
    NEXT
NEXT

