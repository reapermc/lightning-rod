from lightning_rod:api import get_xp_points, get_xp_level, set_xp_level, set_xp_points, add_xp_points, add_xp_level, set_xp_points_percent
from wicked_expressions:api import Var, qInt

function ./get_xp_points_and_level:
    tellraw @a [get_xp_points(), " ", get_xp_level()]

function ./set_xp_level_literal:
    set_xp_level(10)

function ./set_xp_level_expression:
    set_xp_level(Var(qInt, 42))

function ./add_xp_level_literal:
    add_xp_level(10)

function ./add_xp_level_expression:
    add_xp_level(Var(qInt, 5))

function ./set_xp_points_percent_literal:
    set_xp_points_percent(50)

function ./set_xp_points_percent_expression:
    set_xp_points_percent(Var(qInt, 100))



