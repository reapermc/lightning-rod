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
scoreboard players set $basic_math#int$1 reapermc.wicked_expressions 10
scoreboard players set $basic_math#int$2 reapermc.wicked_expressions 500
function reapermc:lightning_rod/math/random/run
scoreboard players operation $basic_math#int$6 reapermc.wicked_expressions = $basic_math#int$5 reapermc.wicked_expressions
scoreboard players operation $basic_math#int$0 reapermc.wicked_expressions = $basic_math#int$6 reapermc.wicked_expressions
scoreboard players set $basic_math#int$1 reapermc.wicked_expressions 2
scoreboard players set $basic_math#int$2 reapermc.wicked_expressions 1000
function reapermc:lightning_rod/math/random/run
scoreboard players operation $basic_math#int$7 reapermc.wicked_expressions = $basic_math#int$5 reapermc.wicked_expressions
scoreboard players operation $basic_math#int$0 reapermc.wicked_expressions = $basic_math#int$7 reapermc.wicked_expressions
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_math:init_expressions",
    "basic_math:reapermc/wicked_expressions/safe_load",
    "reapermc:lightning_rod/math/random/setup"
  ]
}
```

### basic_math

`@function basic_math:reapermc/wicked_expressions/safe_load`

```mcfunction
function basic_math:reapermc/wicked_expressions/safe_load/flush_variable/float
function basic_math:reapermc/wicked_expressions/safe_load/scoreboard_setup
function basic_math:reapermc/wicked_expressions/safe_load/flush_variable/int
```

`@function basic_math:reapermc/wicked_expressions/safe_load/flush_variable/float`

```mcfunction
data remove storage reapermc:wicked_expressions basic_math.data.float
data modify storage reapermc:wicked_expressions basic_math.data.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
```

`@function basic_math:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function basic_math:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $basic_math#int$0 reapermc.wicked_expressions
scoreboard players reset $basic_math#int$1 reapermc.wicked_expressions
scoreboard players reset $basic_math#int$2 reapermc.wicked_expressions
scoreboard players reset $basic_math#int$3 reapermc.wicked_expressions
scoreboard players reset $basic_math#int$4 reapermc.wicked_expressions
scoreboard players reset $basic_math#int$5 reapermc.wicked_expressions
scoreboard players reset $basic_math#int$6 reapermc.wicked_expressions
scoreboard players reset $basic_math#int$1 reapermc.wicked_expressions
scoreboard players reset $basic_math#int$2 reapermc.wicked_expressions
scoreboard players reset $basic_math#int$3 reapermc.wicked_expressions
scoreboard players reset $basic_math#int$4 reapermc.wicked_expressions
scoreboard players reset $basic_math#int$5 reapermc.wicked_expressions
scoreboard players reset $basic_math#int$7 reapermc.wicked_expressions
```

`@function basic_math:init_expressions`

```mcfunction
scoreboard objectives add bolt.expr.const dummy
scoreboard objectives add bolt.expr.const dummy
scoreboard players set $1630111353 bolt.expr.const 1630111353
scoreboard players set $1630111353 bolt.expr.const 1630111353
scoreboard players set $2147483647 bolt.expr.const 2147483647
scoreboard players set $2147483647 bolt.expr.const 2147483647
scoreboard players set $8 bolt.expr.const 8
scoreboard players set $8 bolt.expr.const 8
```

### reapermc

`@function reapermc:lightning_rod/math/random/run`

```mcfunction
scoreboard players operation $basic_math#int$3 reapermc.wicked_expressions = $basic_math#int$2 reapermc.wicked_expressions
scoreboard players operation $basic_math#int$3 reapermc.wicked_expressions -= $basic_math#int$1 reapermc.wicked_expressions
scoreboard players add $basic_math#int$3 reapermc.wicked_expressions 1
scoreboard players operation $basic_math#int$4 reapermc.wicked_expressions *= $1630111353 bolt.expr.const
scoreboard players add $basic_math#int$4 reapermc.wicked_expressions 1623164762
scoreboard players operation $basic_math#int$4 reapermc.wicked_expressions %= $2147483647 bolt.expr.const
scoreboard players operation $basic_math#int$5 reapermc.wicked_expressions = $basic_math#int$4 reapermc.wicked_expressions
scoreboard players operation $basic_math#int$5 reapermc.wicked_expressions /= $8 bolt.expr.const
scoreboard players operation $basic_math#int$5 reapermc.wicked_expressions %= $basic_math#int$3 reapermc.wicked_expressions
scoreboard players operation $basic_math#int$5 reapermc.wicked_expressions += $basic_math#int$1 reapermc.wicked_expressions
```

`@function reapermc:lightning_rod/math/random/setup`

```mcfunction
execute unless score $basic_math#int$4 reapermc.wicked_expressions = $basic_math#int$4 reapermc.wicked_expressions store result score $basic_math#int$4 reapermc.wicked_expressions run seed
```
