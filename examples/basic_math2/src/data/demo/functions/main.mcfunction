from lightning_rod:math import sin, cos

degrees = 45.5

tellraw @a ["  in: ", degrees]
tellraw @a ["out: ", sin(degrees)]

tellraw @a ["  in: ", degrees]
tellraw @a ["out: ", cos(degrees)]




