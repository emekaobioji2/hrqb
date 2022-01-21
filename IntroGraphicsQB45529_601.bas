'Pixels and Screen Coordinates p531
'Text LOCATE row, column
1: LOCATE 1, 10
2: PRINT "This will appear at the top away from the left"
'in graphics column is presented before row
'prepare the screen for drawing chosing a mode from 1-12
'the difference is in the amount of colours supported
3: SCREEN 12
'colour a pixel location with foreground colour
4: PSET (10, 20)
'5: SLEEP (1)
'colour a pixel location with background colour
6: PRESET (10, 20)
'7: SLEEP (1)
'colour a pixel with particular colour
8: PSET (10, 40), 1
'9: SLEEP (1)
'uncolour a pixel with a particular colour
10: PRESET (10, 50), 1
'11: SLEEP (1)
'for more colour codes under screen mode 1 see pages 553-5
'set background colours to 9, and paint foreground from pallete 1
12: COLOR 9, 1
13: SLEEP (1)
'draw a line using pixel colouring at 20,20; 20,21; 20,22; ...
'the foregroud will be colour 2 from pallete 1
16: FOR i = 20 TO 30 STEP 1
    17: PSET (20, i), 2
    ' 18: SLEEP (1)
19: NEXT
'draw a line using pixel colouring at 30,20; 30,21; 30,22; ...
'the foregroud will be colour 3 from pallete 1
20: FOR i = 20 TO 30 STEP 1
    21: PRESET (30, i), 3
    ' 22: SLEEP (1)
23: NEXT
'cycle through all the background colours, and for each
'draw a horizontal line with foreground colour from a given pallete
24: FOR background_color = 1 TO 15 STEP 1
    25: FOR foreground_pallete = 1 TO 2 STEP 1
        26: COLOR background_color, foreground_pallete - 1
        'SLEEP (1)
        27: FOR foreground_color = 1 TO 4 STEP 1
            28: FOR y = 1 TO 100 STEP 1
                29: PSET (y, (background_color * foreground_pallete * foreground_color)), foreground_color - 1
                '30: SLEEP (1)
            31: NEXT
        32: NEXT
    33: NEXT
34: NEXT
'using pallete to assign colours to graphics all at once
'paint 100 pixels with the current default colours and start assigning them different colours
'palette seems to support 63 colors
35: FOR i = 100 TO 150 STEP 1
    36: PSET (i, 150 - i), 10
37: NEXT
38: FOR i = 1 TO 63 STEP 1
    39: PALETTE 10, i
    '40: SLEEP (1)
41: NEXT
'drawing shapes
'Line with default foreground color
42: LINE (100, 100)-(300, 300), 9
43: 'SLEEP (1)
44: PALETTE 9, 5
45: x = 200
46: y = x
47: FOR i = x TO x + 50 STEP 1
    48: PSET (i, x), 1
    49: SLEEP (1)
    50: y = i
51: NEXT
52: FOR i = x TO x + 50 STEP 1
    53: PSET (y, i), 1
    54: SLEEP (1)
    55: x = i
56: NEXT
57: FOR i = y TO x - 50 STEP -1
    58: PSET (i, x), 2
    59: SLEEP (1)
    y = i
60: NEXT
61: FOR i = x TO x - 50 STEP -1
    62: PSET (y, i), 3
    63: SLEEP (1)
64: NEXT








