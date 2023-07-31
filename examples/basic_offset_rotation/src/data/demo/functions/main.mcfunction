from lightning_rod:api import offset_rotation_facing_caret


def draw_line():
    for n in range(40):
        x = n / 4
        particle small_flame ^ ^ ^x 0 0 0 0 0 force

anchored eyes positioned ^ ^ ^ positioned ~ ~-0.2 ~:
    for offset in [-2, 0, 2]:
        summon marker ~ ~ ~ {Tags:[test]}
        as @e[tag=test]:
            tp @s ~ ~ ~ ~ ~

            if offset != 0:
                offset_rotation_facing_caret(offset, 0, 10)

            at @s:
                draw_line()

            kill @s
