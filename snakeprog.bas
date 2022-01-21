DEFINT A-Z
SCREEN 13
TYPE coord
    x AS INTEGER
    y AS INTEGER
END TYPE
CONST maxsnake = 50, maxlength = 300
DIM SHARED snake(maxsnake, maxlength) AS coord, head(maxsnake), length(maxsnake), dir(maxsnake) AS coord
CONST voidcolor = 247, bgcolor = 127
CONST snakecolor = 14, wallcolor = 15, bordercolor = 7
CONST shadowcolor = 224
CONST vipercolor = 12
CONST w = 240, h = 160 ' Field width and height... Coincidentally the same as GBA
' Draw world
' Blank the screen and place the playing area in the middle of the screen
LINE (0, 0)-(319, 199), voidcolor, BF
VIEW (40, 20)-(40 + w - 1, 20 + h - 1), bgcolor, bordercolor
FOR x = 0 TO w - 1:
    Plot x, 0, wallcolor
    Plot x, h - 1, wallcolor
NEXT ' Draw walls
FOR y = 0 TO h - 1
    Plot 0, y, wallcolor
    Plot w - 1, y, wallcolor
NEXT
' Let's put the snake in the center of the playing field
SnakeMoveTo 1, w \ h, h \ 2: SetDir 1, 3: length(1) = 100
aicounter = 0
DO ' main loop... many a program has got one
    ' move player's snake to its current direction
    SnakeMoveTo 1, FNx(1), FNy(1)
    FOR s = 2 TO maxsnake 'deal with enemy snakes too
        IF NOT FNblank(POINT(FNx(s), FNy(s))) THEN
            SnakeAi s
        END IF
        ' ^ Run AI on demand (if impending collision)
        SnakeMoveTo s, FNx(s), FNy(s)
    NEXT
    SnakeAi aicounter + 2 ' Run someone's AI (rotating turns)
    aicounter = (aicounter + 1) MOD (maxsnake - 1)
    ' Read and interpret input (arrow keys, q and esc)
    y$ = INKEY$
    c = INSTR("HPKMq" + CHR$(27), RIGHT$(y$, 1))
    IF y$ <> "" AND c > 0 THEN
        SetDir 1, c - 1
    END IF
    SLEEP 1
LOOP UNTIL c > 4 ' Until q or esc was hit
Finish "Enough already?"
END
FUNCTION FNblank (c)
    FNblank = c > 16 ' Simple test of pixel color indicates floor
END FUNCTION

' Accessors for the snake's next position
FUNCTION FNx (s)
    FNx = snake(s, head(s)).x + dir(s).x
END FUNCTION
FUNCTION FNy (s)
    FNy = snake(s, head(s)).y + dir(s).y
END FUNCTION
SUB Plot (x, y, c) ' This function plots a playground pixel
    PSET (x, y), c ' simple
    IF FNblank(POINT(x, y + 1)) THEN
        PSET (x, y + 1), shadowcolor
    END IF
END SUB
SUB UnPlot (x, y) ' Similarly, erases it.
    IF FNblank(POINT(x, y - 1)) THEN
        PSET (x, y), bgcolor
    ELSE
        PSET (x, y), shadowcolor
    END IF

    IF FNblank(POINT(x, y + 1)) THEN
        PSET (x, y + 1), bgcolor
    END IF
END SUB
SUB SnakeMoveTo (s, x, y) ' s = snake number
    ' Snake body is stored in a ring-buffer.
    ' Calculate where the tail is, and erase it.
    tail = (head(s) + maxlength - length(s)) MOD maxlength
    UnPlot snake(s, tail).x, snake(s, tail).y
    ' Moves the snake forward.
    head(s) = (head(s) + 1) MOD maxlength
    snake(s, head(s)).x = x
    snake(s, head(s)).y = y
    IF NOT FNblank(POINT(x, y)) THEN ' Collided something?
        IF s = 1 THEN
            GameOver ' simple as that
        END IF
        ' AI does not die, it just rebirths '
        SnakeMoveTo s, INT(RND * (w - 4)) + 2, INT(RND * (h - 4)) + 2
        SnakeAi s ' choose a direction
        length(s) = 2 + INT(RND * (maxlength - 2))
    END IF
    IF s = 1 THEN
        Plot x, y, snakecolor
    ELSE
        Plot x, y, vipercolor
    END IF
END SUB
SUB GameOver 'simple death
    INPUT "GAME OVER"; s$
    Finish "Thanks for playing"
END SUB
SUB Finish (msg$)
    SCREEN 0, 1, 0, 0: WIDTH 80, 25
    PRINT msg$
    END
END SUB
SUB SetDir (s, d) ' s = snake number, d = new dir (0-3)
    dir(s).x = (d > 1) * (5 - 2 * d)
    dir(s).y = (d < 2) * (1 - 2 * d)
END SUB
SUB SnakeAi (s) 's = snake number s = snake number
    d = INT(RND * 4) 'Choose random direction
    FOR c = 0 TO 4
        SetDir s, (d + c) MOD 4 'One of 4 dirs, starting from d
        'Done with the AI if no obstacle in that dir.
        'Otherwise, choose another direction.
        IF FNblank(POINT(FNx(s), FNy(s))) THEN
            EXIT SUB
        END IF
    NEXT
END SUB


