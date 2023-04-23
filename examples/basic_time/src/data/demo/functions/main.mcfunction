from lightning_rod:api import get_gametime, get_time, get_day, set_time
from wicked_expressions:api import Var, Int


tellraw @s get_gametime()
tellraw @s get_time()
tellraw @s get_day()

set_time(1200)


x = Var(Int)
x = 5600

set_time(x)








