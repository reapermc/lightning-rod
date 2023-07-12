from wicked_expressions:api import Var, Int
from lightning_rod:api import damage

x = Var(Int)
x = 5

damage(10, death_message='drown', scaling='when_caused_by_living_non_player')
damage(x, death_message='drown')
damage(x+3)
damage(5)



















