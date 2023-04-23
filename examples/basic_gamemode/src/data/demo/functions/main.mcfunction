from lightning_rod:api import get_gamemode, set_gamemode


set_gamemode('survival')
set_gamemode(0)
set_gamemode('creative')
set_gamemode(1)
set_gamemode('adventure')
set_gamemode(2)
set_gamemode('spectator')
set_gamemode(3)


tellraw @a get_gamemode()







