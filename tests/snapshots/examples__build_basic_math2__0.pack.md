# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 15,
    "description": ""
  }
}
```

### demo

`@function demo:main`

```mcfunction
tellraw @a ["  in: ", 45.5]
data modify storage reapermc:wicked_expressions basic_math2.data.float[0][1] set value 45.5f
execute store result score $basic_math2#int$0 reapermc.wicked_expressions run data get storage reapermc:wicked_expressions basic_math2.data.float[0][1] 10
scoreboard players operation $basic_math2#int$2 reapermc.wicked_expressions = $basic_math2#int$0 reapermc.wicked_expressions
scoreboard players remove $basic_math2#int$2 reapermc.wicked_expressions 1800
scoreboard players operation $basic_math2#int$2 reapermc.wicked_expressions %= $1800 bolt.expr.const
scoreboard players remove $basic_math2#int$2 reapermc.wicked_expressions 900
scoreboard players operation $basic_math2#int$2 reapermc.wicked_expressions *= $basic_math2#int$2 reapermc.wicked_expressions
scoreboard players operation $basic_math2#int$1 reapermc.wicked_expressions = $basic_math2#int$2 reapermc.wicked_expressions
scoreboard players add $basic_math2#int$1 reapermc.wicked_expressions 3240000
scoreboard players operation $basic_math2#int$1 reapermc.wicked_expressions /= $1000 bolt.expr.const
scoreboard players operation $basic_math2#int$2 reapermc.wicked_expressions *= $-4 bolt.expr.const
scoreboard players add $basic_math2#int$2 reapermc.wicked_expressions 3240000
scoreboard players operation $basic_math2#int$2 reapermc.wicked_expressions /= $basic_math2#int$1 reapermc.wicked_expressions
scoreboard players operation $basic_math2#int$1 reapermc.wicked_expressions = $basic_math2#int$0 reapermc.wicked_expressions
scoreboard players operation $basic_math2#int$1 reapermc.wicked_expressions %= $3600 bolt.expr.const
execute if score $basic_math2#int$1 reapermc.wicked_expressions matches 1800.. run scoreboard players operation $basic_math2#int$2 reapermc.wicked_expressions *= $-1 bolt.expr.const
execute store result storage bolt.expr:temp 7o9rjbsscog7r_0 float 0.001 run scoreboard players get $basic_math2#int$2 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions basic_math2.data.float[0][2] set from storage bolt.expr:temp 7o9rjbsscog7r_0
tellraw @a ["out: ", {"nbt": "basic_math2.data.float[0][2]", "storage": "reapermc:wicked_expressions"}]
tellraw @a ["  in: ", 45.5]
data modify storage reapermc:wicked_expressions basic_math2.data.float[0][3] set value 45.5f
execute store result score $basic_math2#int$3 reapermc.wicked_expressions run data get storage reapermc:wicked_expressions basic_math2.data.float[0][3] 10
scoreboard players operation $basic_math2#int$6 reapermc.wicked_expressions = $basic_math2#int$3 reapermc.wicked_expressions
scoreboard players remove $basic_math2#int$6 reapermc.wicked_expressions 900
scoreboard players operation $basic_math2#int$6 reapermc.wicked_expressions %= $1800 bolt.expr.const
scoreboard players remove $basic_math2#int$6 reapermc.wicked_expressions 900
scoreboard players operation $basic_math2#int$6 reapermc.wicked_expressions *= $basic_math2#int$6 reapermc.wicked_expressions
scoreboard players operation $basic_math2#int$5 reapermc.wicked_expressions = $basic_math2#int$6 reapermc.wicked_expressions
scoreboard players add $basic_math2#int$5 reapermc.wicked_expressions 3240000
scoreboard players operation $basic_math2#int$5 reapermc.wicked_expressions /= $1000 bolt.expr.const
scoreboard players operation $basic_math2#int$6 reapermc.wicked_expressions *= $-4 bolt.expr.const
scoreboard players add $basic_math2#int$6 reapermc.wicked_expressions 3240000
scoreboard players operation $basic_math2#int$6 reapermc.wicked_expressions /= $basic_math2#int$5 reapermc.wicked_expressions
scoreboard players operation $basic_math2#int$5 reapermc.wicked_expressions = $basic_math2#int$3 reapermc.wicked_expressions
scoreboard players add $basic_math2#int$5 reapermc.wicked_expressions 900
scoreboard players operation $basic_math2#int$5 reapermc.wicked_expressions %= $3600 bolt.expr.const
execute if score $basic_math2#int$5 reapermc.wicked_expressions matches 1800.. run scoreboard players operation $basic_math2#int$6 reapermc.wicked_expressions *= $-1 bolt.expr.const
execute store result storage bolt.expr:temp 7o9rjbsscog7r_1 float 0.001 run scoreboard players get $basic_math2#int$6 reapermc.wicked_expressions
data modify storage reapermc:wicked_expressions basic_math2.data.float[0][4] set from storage bolt.expr:temp 7o9rjbsscog7r_1
tellraw @a ["out: ", {"nbt": "basic_math2.data.float[0][4]", "storage": "reapermc:wicked_expressions"}]
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_math2:init_expressions",
    "basic_math2:reapermc/wicked_expressions/safe_load"
  ]
}
```

### basic_math2

`@function basic_math2:reapermc/wicked_expressions/safe_load`

```mcfunction
function basic_math2:reapermc/wicked_expressions/safe_load/flush_variable/float
function basic_math2:reapermc/wicked_expressions/safe_load/flush_variable/int
function basic_math2:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function basic_math2:reapermc/wicked_expressions/safe_load/flush_variable/float`

```mcfunction
data remove storage reapermc:wicked_expressions basic_math2.data.float
data modify storage reapermc:wicked_expressions basic_math2.data.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
```

`@function basic_math2:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $basic_math2#int$0 reapermc.wicked_expressions
scoreboard players reset $basic_math2#int$1 reapermc.wicked_expressions
scoreboard players reset $basic_math2#int$2 reapermc.wicked_expressions
scoreboard players reset $basic_math2#int$3 reapermc.wicked_expressions
scoreboard players reset $basic_math2#int$4 reapermc.wicked_expressions
scoreboard players reset $basic_math2#int$5 reapermc.wicked_expressions
scoreboard players reset $basic_math2#int$6 reapermc.wicked_expressions
```

`@function basic_math2:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function basic_math2:init_expressions`

```mcfunction
scoreboard objectives add bolt.expr.const dummy
scoreboard objectives add bolt.expr.const dummy
scoreboard players set $1800 bolt.expr.const 1800
scoreboard players set $1800 bolt.expr.const 1800
scoreboard players set $1000 bolt.expr.const 1000
scoreboard players set $1000 bolt.expr.const 1000
scoreboard players set $-4 bolt.expr.const -4
scoreboard players set $-4 bolt.expr.const -4
scoreboard players set $3600 bolt.expr.const 3600
scoreboard players set $3600 bolt.expr.const 3600
scoreboard players set $-1 bolt.expr.const -1
scoreboard players set $-1 bolt.expr.const -1
```
