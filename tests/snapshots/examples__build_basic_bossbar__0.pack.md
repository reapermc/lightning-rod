# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 12,
    "description": ""
  }
}
```

### demo

`@function demo:main`

```mcfunction
bossbar set lightning_rod:bossbar.basic_bossbar.0 name "gas prices"
bossbar set lightning_rod:bossbar.basic_bossbar.0 color red
bossbar set lightning_rod:bossbar.basic_bossbar.0 style notched_20
tag @s add lightning_rod.bossbar.basic_bossbar.0.shown
bossbar set lightning_rod:bossbar.basic_bossbar.0 players @s
tag @s remove lightning_rod.bossbar.basic_bossbar.0.shown
bossbar set lightning_rod:bossbar.basic_bossbar.0 players
bossbar set lightning_rod:bossbar.basic_bossbar.0 players @a[tag=lightning_rod.bossbar.basic_bossbar.0.shown]
bossbar set lightning_rod:bossbar.basic_bossbar.0 visible true
bossbar set lightning_rod:bossbar.basic_bossbar.0 visible false
bossbar set lightning_rod:bossbar.basic_bossbar.0 value 10
scoreboard players operation $basic_bossbar#int$0 reapermc.wicked_expressions = $basic_bossbar#int$3 reapermc.wicked_expressions
execute store result bossbar lightning_rod:bossbar.basic_bossbar.0 value run scoreboard players get $basic_bossbar#int$0 reapermc.wicked_expressions
bossbar set lightning_rod:bossbar.basic_bossbar.0 max 100
scoreboard players operation $basic_bossbar#int$0 reapermc.wicked_expressions = $basic_bossbar#int$3 reapermc.wicked_expressions
execute store result bossbar lightning_rod:bossbar.basic_bossbar.0 max run scoreboard players get $basic_bossbar#int$0 reapermc.wicked_expressions
execute store result score $basic_bossbar#int$0 reapermc.wicked_expressions run bossbar get lightning_rod:bossbar.basic_bossbar.0 value
execute store result score $basic_bossbar#int$0 reapermc.wicked_expressions run bossbar get lightning_rod:bossbar.basic_bossbar.0 max
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_bossbar:reapermc/wicked_expressions/safe_load",
    "basic_bossbar:reapermc/lightning_rod/bossbar/setup"
  ]
}
```

### basic_bossbar

`@function basic_bossbar:reapermc/wicked_expressions/safe_load`

```mcfunction
function basic_bossbar:reapermc/wicked_expressions/safe_load/flush_variable/int
```

`@function basic_bossbar:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $basic_bossbar#int$0 reapermc.wicked_expressions
scoreboard players reset $basic_bossbar#int$1 reapermc.wicked_expressions
scoreboard players reset $basic_bossbar#int$2 reapermc.wicked_expressions
scoreboard players reset $basic_bossbar#int$3 reapermc.wicked_expressions
```

`@function basic_bossbar:reapermc/lightning_rod/bossbar/setup`

```mcfunction
bossbar add lightning_rod:bossbar.basic_bossbar.0 "lightning_rod:bossbar.basic_bossbar.0"
bossbar add lightning_rod:bossbar.basic_bossbar.1 "lightning_rod:bossbar.basic_bossbar.1"
bossbar add lightning_rod:bossbar.basic_bossbar.2 "lightning_rod:bossbar.basic_bossbar.2"
```
