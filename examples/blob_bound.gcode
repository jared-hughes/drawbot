G17 (circles about xy plane)
G90 (absolute)
G1 F100 (set feedrate)

G00 X5.8095 Y4.3643

G01 X55.8094 Y4.3643
G01 X55.8094 Y54.3642
G01 X5.8095 Y54.3642
G01 X5.8095 Y4.3643
M5 (stop moving)
M2 (end program)

G01 X20 Y-100
G03 X20 Y100 R100
G02 X20 Y340.53 R999999
G02 X20 Y-340.53 R340.53
G02 X20 Y-100 R999999