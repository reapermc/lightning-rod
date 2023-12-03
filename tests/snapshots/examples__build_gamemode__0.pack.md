# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 18,
    "description": ""
  }
}
```

### demo

`@function demo:main`

```mcfunction
function gamemode:reapermc/lightning_rod/gamemode/get_gamemode
tellraw @s {"nbt": "data.gamemode.var.string[0][0]", "storage": "reapermc:wicked_expressions"}
gamemode survival @s
```

### gamemode

`@function gamemode:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function gamemode:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard players reset $gamemode#bool$6 reapermc.wicked_expressions
scoreboard players reset $gamemode#bool$4 reapermc.wicked_expressions
scoreboard players reset $gamemode#bool$5 reapermc.wicked_expressions
scoreboard players reset $gamemode#bool$2 reapermc.wicked_expressions
scoreboard players reset $gamemode#bool$3 reapermc.wicked_expressions
scoreboard players reset $gamemode#bool$0 reapermc.wicked_expressions
scoreboard players reset $gamemode#bool$1 reapermc.wicked_expressions
scoreboard players reset $gamemode#qint$0 reapermc.wicked_expressions
data remove storage reapermc:wicked_expressions data.gamemode.var.string
data modify storage reapermc:wicked_expressions data.gamemode.var.string append value ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]
```

`@function gamemode:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function gamemode:reapermc/lightning_rod/gamemode/get_gamemode/we_comp_autonest/5f`

```mcfunction
execute store success score $gamemode#bool$6 reapermc.wicked_expressions if score $gamemode#qint$0 reapermc.wicked_expressions matches 3
execute unless score $gamemode#bool$6 reapermc.wicked_expressions matches 0 run data modify storage reapermc:wicked_expressions data.gamemode.var.string[0][0] set value "spectator"
```

`@function gamemode:reapermc/lightning_rod/gamemode/get_gamemode/we_comp_autonest/3f`

```mcfunction
execute store success score $gamemode#bool$4 reapermc.wicked_expressions if score $gamemode#qint$0 reapermc.wicked_expressions matches 2
execute unless score $gamemode#bool$4 reapermc.wicked_expressions matches 0 run data modify storage reapermc:wicked_expressions data.gamemode.var.string[0][0] set value "adventure"
execute store success score $gamemode#bool$5 reapermc.wicked_expressions if score $gamemode#qint$0 reapermc.wicked_expressions matches 2
execute if score $gamemode#bool$5 reapermc.wicked_expressions matches 0 run function gamemode:reapermc/lightning_rod/gamemode/get_gamemode/we_comp_autonest/5f
```

`@function gamemode:reapermc/lightning_rod/gamemode/get_gamemode/we_comp_autonest/1f`

```mcfunction
execute store success score $gamemode#bool$2 reapermc.wicked_expressions if score $gamemode#qint$0 reapermc.wicked_expressions matches 1
execute unless score $gamemode#bool$2 reapermc.wicked_expressions matches 0 run data modify storage reapermc:wicked_expressions data.gamemode.var.string[0][0] set value "creative"
execute store success score $gamemode#bool$3 reapermc.wicked_expressions if score $gamemode#qint$0 reapermc.wicked_expressions matches 1
execute if score $gamemode#bool$3 reapermc.wicked_expressions matches 0 run function gamemode:reapermc/lightning_rod/gamemode/get_gamemode/we_comp_autonest/3f
```

`@function gamemode:reapermc/lightning_rod/gamemode/get_gamemode`

```mcfunction
execute store result score $gamemode#qint$0 reapermc.wicked_expressions run data get entity @s playerGameType
execute store success score $gamemode#bool$0 reapermc.wicked_expressions if score $gamemode#qint$0 reapermc.wicked_expressions matches 0
execute unless score $gamemode#bool$0 reapermc.wicked_expressions matches 0 run data modify storage reapermc:wicked_expressions data.gamemode.var.string[0][0] set value "survival"
execute store success score $gamemode#bool$1 reapermc.wicked_expressions if score $gamemode#qint$0 reapermc.wicked_expressions matches 0
execute if score $gamemode#bool$1 reapermc.wicked_expressions matches 0 run function gamemode:reapermc/lightning_rod/gamemode/get_gamemode/we_comp_autonest/1f
```

`@function gamemode:reapermc/wicked_expressions/loader`

```mcfunction
function gamemode:reapermc/wicked_expressions/loader/prio_0
function gamemode:reapermc/wicked_expressions/loader/prio_1
function gamemode:reapermc/wicked_expressions/loader/prio_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "gamemode:reapermc/wicked_expressions/loader"
  ]
}
```
