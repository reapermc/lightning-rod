from lightning_rod:api import random, pow
from wicked_expressions:api import Var, Int





x = Var(Int)


print(x)
x = random(10, 500)
print(x)
x = random(2, 1000)

# tellraw @s random(1, 10)

# tellraw @s pow(5, 3)