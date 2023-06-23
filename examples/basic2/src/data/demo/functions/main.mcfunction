from lightning_rod:api import set_level, random
from wicked_expressions:api import StaticVar, Int


function ./set_random_level:
    set_level(random(5, 20))

function ./set_level_from_expr:
    foo = StaticVar(Int)

    foo = 5
    set_level(foo)