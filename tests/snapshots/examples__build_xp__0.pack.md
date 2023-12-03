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

`@function(strip_final_newline) demo:main`

```mcfunction

```

`@function demo:get_xp_points_and_level`

```mcfunction
execute store result score $xp#qint$0 reapermc.wicked_expressions run xp query @s points
execute store result score $xp#qint$1 reapermc.wicked_expressions run xp query @s levels
tellraw @a [{"score": {"name": "$xp#qint$0", "objective": "reapermc.wicked_expressions"}}, " ", {"score": {"name": "$xp#qint$1", "objective": "reapermc.wicked_expressions"}}]
```

`@function demo:set_xp_level_literal`

```mcfunction
xp set @s 10 levels
```

`@function demo:set_xp_level_expression`

```mcfunction
scoreboard players set $xp#qint$2 reapermc.wicked_expressions 42
scoreboard players operation $xp#qint$3 reapermc.wicked_expressions = $xp#qint$2 reapermc.wicked_expressions
xp set @s 0 levels
scoreboard players operation $xp#qint$4 reapermc.wicked_expressions = $xp#qint$3 reapermc.wicked_expressions
function xp:reapermc/lightning_rod/xp/add_xp_levels
```

`@function demo:add_xp_level_literal`

```mcfunction
xp add @s 10 levels
```

`@function demo:add_xp_level_expression`

```mcfunction
scoreboard players set $xp#qint$5 reapermc.wicked_expressions 5
scoreboard players operation $xp#qint$6 reapermc.wicked_expressions = $xp#qint$5 reapermc.wicked_expressions
scoreboard players operation $xp#qint$4 reapermc.wicked_expressions = $xp#qint$6 reapermc.wicked_expressions
function xp:reapermc/lightning_rod/xp/add_xp_levels
```

`@function demo:set_xp_points_percent_literal`

```mcfunction
execute store result score $xp#qint$8 reapermc.wicked_expressions run xp query @s levels
scoreboard players operation $xp#qint$7 reapermc.wicked_expressions = $xp#qint$8 reapermc.wicked_expressions
xp set @s 8772 levels
xp set @s 38900 points
scoreboard players operation $xp#qint$3 reapermc.wicked_expressions = $xp#qint$7 reapermc.wicked_expressions
xp set @s 0 levels
scoreboard players operation $xp#qint$4 reapermc.wicked_expressions = $xp#qint$3 reapermc.wicked_expressions
function xp:reapermc/lightning_rod/xp/add_xp_levels
```

`@function demo:set_xp_points_percent_expression`

```mcfunction
scoreboard players set $xp#qint$9 reapermc.wicked_expressions 100
scoreboard players operation $xp#qint$10 reapermc.wicked_expressions = $xp#qint$9 reapermc.wicked_expressions
execute store result score $xp#qint$11 reapermc.wicked_expressions run xp query @s levels
scoreboard players operation $xp#qint$7 reapermc.wicked_expressions = $xp#qint$11 reapermc.wicked_expressions
xp set @s 8772 levels
function xp:reapermc/lightning_rod/xp/set_xp_points_percent
```

### xp

`@function xp:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function xp:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard players reset $xp#qint$0 reapermc.wicked_expressions
scoreboard players reset $xp#qint$1 reapermc.wicked_expressions
scoreboard players reset $xp#bool$0 reapermc.wicked_expressions
scoreboard players reset $xp#qint$2 reapermc.wicked_expressions
scoreboard players reset $xp#qint$3 reapermc.wicked_expressions
scoreboard players reset $xp#qint$4 reapermc.wicked_expressions
scoreboard players reset $xp#qint$5 reapermc.wicked_expressions
scoreboard players reset $xp#qint$6 reapermc.wicked_expressions
scoreboard players reset $xp#qint$7 reapermc.wicked_expressions
scoreboard players reset $xp#qint$8 reapermc.wicked_expressions
scoreboard players reset $xp#bool$1 reapermc.wicked_expressions
scoreboard players reset $xp#qint$9 reapermc.wicked_expressions
scoreboard players reset $xp#qint$10 reapermc.wicked_expressions
scoreboard players reset $xp#qint$11 reapermc.wicked_expressions
```

`@function xp:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function xp:reapermc/wicked_expressions/loader`

```mcfunction
function xp:reapermc/wicked_expressions/loader/prio_0
function xp:reapermc/wicked_expressions/loader/prio_1
function xp:reapermc/wicked_expressions/loader/prio_2
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/134217728`

```mcfunction
xp add @s 134217728 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 134217728
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/67108864`

```mcfunction
xp add @s 67108864 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 67108864
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/33554432`

```mcfunction
xp add @s 33554432 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 33554432
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/16777216`

```mcfunction
xp add @s 16777216 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 16777216
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/8388608`

```mcfunction
xp add @s 8388608 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 8388608
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/4194304`

```mcfunction
xp add @s 4194304 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 4194304
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/2097152`

```mcfunction
xp add @s 2097152 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 2097152
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/1048576`

```mcfunction
xp add @s 1048576 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 1048576
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/524288`

```mcfunction
xp add @s 524288 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 524288
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/262144`

```mcfunction
xp add @s 262144 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 262144
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/131072`

```mcfunction
xp add @s 131072 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 131072
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/65536`

```mcfunction
xp add @s 65536 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 65536
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/32768`

```mcfunction
xp add @s 32768 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 32768
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/16384`

```mcfunction
xp add @s 16384 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 16384
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/8192`

```mcfunction
xp add @s 8192 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 8192
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/4096`

```mcfunction
xp add @s 4096 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 4096
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/2048`

```mcfunction
xp add @s 2048 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 2048
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/1024`

```mcfunction
xp add @s 1024 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 1024
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/512`

```mcfunction
xp add @s 512 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 512
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/256`

```mcfunction
xp add @s 256 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 256
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/128`

```mcfunction
xp add @s 128 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 128
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/64`

```mcfunction
xp add @s 64 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 64
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/32`

```mcfunction
xp add @s 32 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 32
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/16`

```mcfunction
xp add @s 16 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 16
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/8`

```mcfunction
xp add @s 8 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 8
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/4`

```mcfunction
xp add @s 4 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 4
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/2`

```mcfunction
xp add @s 2 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 2
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels/1`

```mcfunction
xp add @s 1 levels
scoreboard players remove $xp#qint$4 reapermc.wicked_expressions 1
```

`@function xp:reapermc/lightning_rod/xp/add_xp_levels`

```mcfunction
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 134217728..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/134217728
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 67108864..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/67108864
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 33554432..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/33554432
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 16777216..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/16777216
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 8388608..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/8388608
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 4194304..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/4194304
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 2097152..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/2097152
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 1048576..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/1048576
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 524288..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/524288
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 262144..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/262144
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 131072..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/131072
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 65536..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/65536
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 32768..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/32768
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 16384..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/16384
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 8192..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/8192
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 4096..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/4096
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 2048..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/2048
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 1024..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/1024
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 512..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/512
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 256..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/256
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 128..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/128
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 64..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/64
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 32..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/32
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 16..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/16
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 8..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/8
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 4..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/4
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 2..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/2
execute store success score $xp#bool$0 reapermc.wicked_expressions if score $xp#qint$4 reapermc.wicked_expressions matches 1..
execute unless score $xp#bool$0 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/add_xp_levels/1
stopsound @s player minecraft:entity.player.levelup
```

`@function xp:reapermc/lightning_rod/xp/set_xp_points_percent/64`

```mcfunction
scoreboard players remove $xp#qint$10 reapermc.wicked_expressions 64
xp add @s 49791
```

`@function xp:reapermc/lightning_rod/xp/set_xp_points_percent/32`

```mcfunction
scoreboard players remove $xp#qint$10 reapermc.wicked_expressions 32
xp add @s 24896
```

`@function xp:reapermc/lightning_rod/xp/set_xp_points_percent/16`

```mcfunction
scoreboard players remove $xp#qint$10 reapermc.wicked_expressions 16
xp add @s 12448
```

`@function xp:reapermc/lightning_rod/xp/set_xp_points_percent/8`

```mcfunction
scoreboard players remove $xp#qint$10 reapermc.wicked_expressions 8
xp add @s 6224
```

`@function xp:reapermc/lightning_rod/xp/set_xp_points_percent/4`

```mcfunction
scoreboard players remove $xp#qint$10 reapermc.wicked_expressions 4
xp add @s 3112
```

`@function xp:reapermc/lightning_rod/xp/set_xp_points_percent/2`

```mcfunction
scoreboard players remove $xp#qint$10 reapermc.wicked_expressions 2
xp add @s 1556
```

`@function xp:reapermc/lightning_rod/xp/set_xp_points_percent/1`

```mcfunction
scoreboard players remove $xp#qint$10 reapermc.wicked_expressions 1
xp add @s 778
```

`@function xp:reapermc/lightning_rod/xp/set_xp_points_percent`

```mcfunction
xp set @s 0 points
execute store success score $xp#bool$1 reapermc.wicked_expressions if score $xp#qint$10 reapermc.wicked_expressions matches 64..
execute unless score $xp#bool$1 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/set_xp_points_percent/64
execute store success score $xp#bool$1 reapermc.wicked_expressions if score $xp#qint$10 reapermc.wicked_expressions matches 32..
execute unless score $xp#bool$1 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/set_xp_points_percent/32
execute store success score $xp#bool$1 reapermc.wicked_expressions if score $xp#qint$10 reapermc.wicked_expressions matches 16..
execute unless score $xp#bool$1 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/set_xp_points_percent/16
execute store success score $xp#bool$1 reapermc.wicked_expressions if score $xp#qint$10 reapermc.wicked_expressions matches 8..
execute unless score $xp#bool$1 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/set_xp_points_percent/8
execute store success score $xp#bool$1 reapermc.wicked_expressions if score $xp#qint$10 reapermc.wicked_expressions matches 4..
execute unless score $xp#bool$1 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/set_xp_points_percent/4
execute store success score $xp#bool$1 reapermc.wicked_expressions if score $xp#qint$10 reapermc.wicked_expressions matches 2..
execute unless score $xp#bool$1 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/set_xp_points_percent/2
execute store success score $xp#bool$1 reapermc.wicked_expressions if score $xp#qint$10 reapermc.wicked_expressions matches 1..
execute unless score $xp#bool$1 reapermc.wicked_expressions matches 0 run function xp:reapermc/lightning_rod/xp/set_xp_points_percent/1
scoreboard players operation $xp#qint$3 reapermc.wicked_expressions = $xp#qint$7 reapermc.wicked_expressions
xp set @s 0 levels
scoreboard players operation $xp#qint$4 reapermc.wicked_expressions = $xp#qint$3 reapermc.wicked_expressions
function xp:reapermc/lightning_rod/xp/add_xp_levels
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "xp:reapermc/wicked_expressions/loader"
  ]
}
```
