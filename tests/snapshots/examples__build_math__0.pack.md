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
scoreboard players set $math#qint$0 reapermc.wicked_expressions 0
```

`@function demo:random_test`

```mcfunction
scoreboard players operation $math#qint$1 reapermc.wicked_expressions = $math#qint$0 reapermc.wicked_expressions
scoreboard players set $math#qint$2 reapermc.wicked_expressions 10
function math:reapermc/lightning_rod/math/random
scoreboard players operation $math#qint$3 reapermc.wicked_expressions = $math#qint$5 reapermc.wicked_expressions
tellraw @s {"score": {"name": "$math#qint$3", "objective": "reapermc.wicked_expressions"}}
```

`@function demo:power_test`

```mcfunction
scoreboard players set $math#qint$6 reapermc.wicked_expressions 10
scoreboard players set $math#qint$7 reapermc.wicked_expressions 3
scoreboard players operation $math#qint$8 reapermc.wicked_expressions = $math#qint$6 reapermc.wicked_expressions
function math:reapermc/lightning_rod/math/power
scoreboard players operation $math#qint$9 reapermc.wicked_expressions = $math#qint$8 reapermc.wicked_expressions
tellraw @s {"score": {"name": "$math#qint$9", "objective": "reapermc.wicked_expressions"}}
```

`@function demo:sqrt_test`

```mcfunction
scoreboard players set $math#qint$10 reapermc.wicked_expressions 16
function math:reapermc/lightning_rod/math/sqrt
scoreboard players operation $math#qint$13 reapermc.wicked_expressions = $math#qint$12 reapermc.wicked_expressions
tellraw @s {"score": {"name": "$math#qint$13", "objective": "reapermc.wicked_expressions"}}
```

### math

`@function math:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.lightning_rod dummy
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function math:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard players reset $math#bool$0 reapermc.wicked_expressions
scoreboard players reset $math#qint$4 reapermc.wicked_expressions
scoreboard players reset $math#qint$5 reapermc.wicked_expressions
scoreboard players reset $math#qint$1 reapermc.wicked_expressions
scoreboard players reset $math#qint$2 reapermc.wicked_expressions
scoreboard players reset $math#qint$3 reapermc.wicked_expressions
scoreboard players reset $math#bool$1 reapermc.wicked_expressions
scoreboard players reset $math#qint$6 reapermc.wicked_expressions
scoreboard players reset $math#qint$7 reapermc.wicked_expressions
scoreboard players reset $math#qint$8 reapermc.wicked_expressions
scoreboard players reset $math#qint$9 reapermc.wicked_expressions
scoreboard players reset $math#bool$2 reapermc.wicked_expressions
scoreboard players reset $math#qint$10 reapermc.wicked_expressions
scoreboard players reset $math#qint$11 reapermc.wicked_expressions
scoreboard players reset $math#qint$12 reapermc.wicked_expressions
scoreboard players reset $math#qint$13 reapermc.wicked_expressions
scoreboard players reset $math#qint$0 reapermc.wicked_expressions
```

`@function math:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function math:reapermc/lightning_rod/math/random`

```mcfunction
scoreboard players operation $math#qint$4 reapermc.wicked_expressions = $math#qint$2 reapermc.wicked_expressions
scoreboard players operation $math#qint$4 reapermc.wicked_expressions -= $math#qint$1 reapermc.wicked_expressions
scoreboard players add $math#qint$4 reapermc.wicked_expressions 1
scoreboard players operation .random.math.lcg reapermc.lightning_rod *= $1630111353 bolt.expr.const
scoreboard players add .random.math.lcg reapermc.lightning_rod 1623164762
scoreboard players operation .random.math.lcg reapermc.lightning_rod %= $2147483647 bolt.expr.const
scoreboard players operation $math#qint$5 reapermc.wicked_expressions = .random.math.lcg reapermc.lightning_rod
scoreboard players operation $math#qint$5 reapermc.wicked_expressions /= $8 bolt.expr.const
scoreboard players operation $math#qint$5 reapermc.wicked_expressions %= $math#qint$4 reapermc.wicked_expressions
scoreboard players operation $math#qint$5 reapermc.wicked_expressions += $math#qint$1 reapermc.wicked_expressions
```

`@function math:reapermc/lightning_rod/math/power`

```mcfunction
scoreboard players operation $math#qint$8 reapermc.wicked_expressions *= $math#qint$6 reapermc.wicked_expressions
scoreboard players remove $math#qint$7 reapermc.wicked_expressions 1
execute store success score $math#bool$1 reapermc.wicked_expressions unless score $math#qint$7 reapermc.wicked_expressions matches ..1
execute unless score $math#bool$1 reapermc.wicked_expressions matches 0 run function math:reapermc/lightning_rod/math/power
```

`@function math:reapermc/lightning_rod/math/sqrt`

```mcfunction
scoreboard players set $math#qint$12 reapermc.wicked_expressions 0
scoreboard players operation $math#qint$11 reapermc.wicked_expressions = $math#qint$12 reapermc.wicked_expressions
scoreboard players add $math#qint$11 reapermc.wicked_expressions 32768
scoreboard players operation $math#qint$11 reapermc.wicked_expressions *= $math#qint$11 reapermc.wicked_expressions
execute store success score $math#bool$2 reapermc.wicked_expressions if score $math#qint$11 reapermc.wicked_expressions <= $math#qint$10 reapermc.wicked_expressions
execute unless score $math#bool$2 reapermc.wicked_expressions matches 0 run scoreboard players add $math#qint$12 reapermc.wicked_expressions 32768
scoreboard players operation $math#qint$11 reapermc.wicked_expressions = $math#qint$12 reapermc.wicked_expressions
scoreboard players add $math#qint$11 reapermc.wicked_expressions 16384
scoreboard players operation $math#qint$11 reapermc.wicked_expressions *= $math#qint$11 reapermc.wicked_expressions
execute store success score $math#bool$2 reapermc.wicked_expressions if score $math#qint$11 reapermc.wicked_expressions <= $math#qint$10 reapermc.wicked_expressions
execute unless score $math#bool$2 reapermc.wicked_expressions matches 0 run scoreboard players add $math#qint$12 reapermc.wicked_expressions 16384
scoreboard players operation $math#qint$11 reapermc.wicked_expressions = $math#qint$12 reapermc.wicked_expressions
scoreboard players add $math#qint$11 reapermc.wicked_expressions 8192
scoreboard players operation $math#qint$11 reapermc.wicked_expressions *= $math#qint$11 reapermc.wicked_expressions
execute store success score $math#bool$2 reapermc.wicked_expressions if score $math#qint$11 reapermc.wicked_expressions <= $math#qint$10 reapermc.wicked_expressions
execute unless score $math#bool$2 reapermc.wicked_expressions matches 0 run scoreboard players add $math#qint$12 reapermc.wicked_expressions 8192
scoreboard players operation $math#qint$11 reapermc.wicked_expressions = $math#qint$12 reapermc.wicked_expressions
scoreboard players add $math#qint$11 reapermc.wicked_expressions 4096
scoreboard players operation $math#qint$11 reapermc.wicked_expressions *= $math#qint$11 reapermc.wicked_expressions
execute store success score $math#bool$2 reapermc.wicked_expressions if score $math#qint$11 reapermc.wicked_expressions <= $math#qint$10 reapermc.wicked_expressions
execute unless score $math#bool$2 reapermc.wicked_expressions matches 0 run scoreboard players add $math#qint$12 reapermc.wicked_expressions 4096
scoreboard players operation $math#qint$11 reapermc.wicked_expressions = $math#qint$12 reapermc.wicked_expressions
scoreboard players add $math#qint$11 reapermc.wicked_expressions 2048
scoreboard players operation $math#qint$11 reapermc.wicked_expressions *= $math#qint$11 reapermc.wicked_expressions
execute store success score $math#bool$2 reapermc.wicked_expressions if score $math#qint$11 reapermc.wicked_expressions <= $math#qint$10 reapermc.wicked_expressions
execute unless score $math#bool$2 reapermc.wicked_expressions matches 0 run scoreboard players add $math#qint$12 reapermc.wicked_expressions 2048
scoreboard players operation $math#qint$11 reapermc.wicked_expressions = $math#qint$12 reapermc.wicked_expressions
scoreboard players add $math#qint$11 reapermc.wicked_expressions 1024
scoreboard players operation $math#qint$11 reapermc.wicked_expressions *= $math#qint$11 reapermc.wicked_expressions
execute store success score $math#bool$2 reapermc.wicked_expressions if score $math#qint$11 reapermc.wicked_expressions <= $math#qint$10 reapermc.wicked_expressions
execute unless score $math#bool$2 reapermc.wicked_expressions matches 0 run scoreboard players add $math#qint$12 reapermc.wicked_expressions 1024
scoreboard players operation $math#qint$11 reapermc.wicked_expressions = $math#qint$12 reapermc.wicked_expressions
scoreboard players add $math#qint$11 reapermc.wicked_expressions 512
scoreboard players operation $math#qint$11 reapermc.wicked_expressions *= $math#qint$11 reapermc.wicked_expressions
execute store success score $math#bool$2 reapermc.wicked_expressions if score $math#qint$11 reapermc.wicked_expressions <= $math#qint$10 reapermc.wicked_expressions
execute unless score $math#bool$2 reapermc.wicked_expressions matches 0 run scoreboard players add $math#qint$12 reapermc.wicked_expressions 512
scoreboard players operation $math#qint$11 reapermc.wicked_expressions = $math#qint$12 reapermc.wicked_expressions
scoreboard players add $math#qint$11 reapermc.wicked_expressions 256
scoreboard players operation $math#qint$11 reapermc.wicked_expressions *= $math#qint$11 reapermc.wicked_expressions
execute store success score $math#bool$2 reapermc.wicked_expressions if score $math#qint$11 reapermc.wicked_expressions <= $math#qint$10 reapermc.wicked_expressions
execute unless score $math#bool$2 reapermc.wicked_expressions matches 0 run scoreboard players add $math#qint$12 reapermc.wicked_expressions 256
scoreboard players operation $math#qint$11 reapermc.wicked_expressions = $math#qint$12 reapermc.wicked_expressions
scoreboard players add $math#qint$11 reapermc.wicked_expressions 128
scoreboard players operation $math#qint$11 reapermc.wicked_expressions *= $math#qint$11 reapermc.wicked_expressions
execute store success score $math#bool$2 reapermc.wicked_expressions if score $math#qint$11 reapermc.wicked_expressions <= $math#qint$10 reapermc.wicked_expressions
execute unless score $math#bool$2 reapermc.wicked_expressions matches 0 run scoreboard players add $math#qint$12 reapermc.wicked_expressions 128
scoreboard players operation $math#qint$11 reapermc.wicked_expressions = $math#qint$12 reapermc.wicked_expressions
scoreboard players add $math#qint$11 reapermc.wicked_expressions 64
scoreboard players operation $math#qint$11 reapermc.wicked_expressions *= $math#qint$11 reapermc.wicked_expressions
execute store success score $math#bool$2 reapermc.wicked_expressions if score $math#qint$11 reapermc.wicked_expressions <= $math#qint$10 reapermc.wicked_expressions
execute unless score $math#bool$2 reapermc.wicked_expressions matches 0 run scoreboard players add $math#qint$12 reapermc.wicked_expressions 64
scoreboard players operation $math#qint$11 reapermc.wicked_expressions = $math#qint$12 reapermc.wicked_expressions
scoreboard players add $math#qint$11 reapermc.wicked_expressions 32
scoreboard players operation $math#qint$11 reapermc.wicked_expressions *= $math#qint$11 reapermc.wicked_expressions
execute store success score $math#bool$2 reapermc.wicked_expressions if score $math#qint$11 reapermc.wicked_expressions <= $math#qint$10 reapermc.wicked_expressions
execute unless score $math#bool$2 reapermc.wicked_expressions matches 0 run scoreboard players add $math#qint$12 reapermc.wicked_expressions 32
scoreboard players operation $math#qint$11 reapermc.wicked_expressions = $math#qint$12 reapermc.wicked_expressions
scoreboard players add $math#qint$11 reapermc.wicked_expressions 16
scoreboard players operation $math#qint$11 reapermc.wicked_expressions *= $math#qint$11 reapermc.wicked_expressions
execute store success score $math#bool$2 reapermc.wicked_expressions if score $math#qint$11 reapermc.wicked_expressions <= $math#qint$10 reapermc.wicked_expressions
execute unless score $math#bool$2 reapermc.wicked_expressions matches 0 run scoreboard players add $math#qint$12 reapermc.wicked_expressions 16
scoreboard players operation $math#qint$11 reapermc.wicked_expressions = $math#qint$12 reapermc.wicked_expressions
scoreboard players add $math#qint$11 reapermc.wicked_expressions 8
scoreboard players operation $math#qint$11 reapermc.wicked_expressions *= $math#qint$11 reapermc.wicked_expressions
execute store success score $math#bool$2 reapermc.wicked_expressions if score $math#qint$11 reapermc.wicked_expressions <= $math#qint$10 reapermc.wicked_expressions
execute unless score $math#bool$2 reapermc.wicked_expressions matches 0 run scoreboard players add $math#qint$12 reapermc.wicked_expressions 8
scoreboard players operation $math#qint$11 reapermc.wicked_expressions = $math#qint$12 reapermc.wicked_expressions
scoreboard players add $math#qint$11 reapermc.wicked_expressions 4
scoreboard players operation $math#qint$11 reapermc.wicked_expressions *= $math#qint$11 reapermc.wicked_expressions
execute store success score $math#bool$2 reapermc.wicked_expressions if score $math#qint$11 reapermc.wicked_expressions <= $math#qint$10 reapermc.wicked_expressions
execute unless score $math#bool$2 reapermc.wicked_expressions matches 0 run scoreboard players add $math#qint$12 reapermc.wicked_expressions 4
scoreboard players operation $math#qint$11 reapermc.wicked_expressions = $math#qint$12 reapermc.wicked_expressions
scoreboard players add $math#qint$11 reapermc.wicked_expressions 2
scoreboard players operation $math#qint$11 reapermc.wicked_expressions *= $math#qint$11 reapermc.wicked_expressions
execute store success score $math#bool$2 reapermc.wicked_expressions if score $math#qint$11 reapermc.wicked_expressions <= $math#qint$10 reapermc.wicked_expressions
execute unless score $math#bool$2 reapermc.wicked_expressions matches 0 run scoreboard players add $math#qint$12 reapermc.wicked_expressions 2
scoreboard players operation $math#qint$11 reapermc.wicked_expressions = $math#qint$12 reapermc.wicked_expressions
scoreboard players add $math#qint$11 reapermc.wicked_expressions 1
scoreboard players operation $math#qint$11 reapermc.wicked_expressions *= $math#qint$11 reapermc.wicked_expressions
execute store success score $math#bool$2 reapermc.wicked_expressions if score $math#qint$11 reapermc.wicked_expressions <= $math#qint$10 reapermc.wicked_expressions
execute unless score $math#bool$2 reapermc.wicked_expressions matches 0 run scoreboard players add $math#qint$12 reapermc.wicked_expressions 1
```

`@function math:reapermc/wicked_expressions/loader`

```mcfunction
function math:reapermc/wicked_expressions/loader/prio_0
function math:reapermc/wicked_expressions/loader/prio_1
function math:reapermc/wicked_expressions/loader/prio_2
```

`@function math:init_expressions`

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

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "math:init_expressions",
    "reapermc:lightning_rod/math/random_setup",
    "math:reapermc/wicked_expressions/loader"
  ]
}
```

### reapermc

`@function reapermc:lightning_rod/math/random_setup`

```mcfunction
execute store success score $math#bool$0 reapermc.wicked_expressions if score .random.math.lcg reapermc.lightning_rod = .random.math.lcg reapermc.lightning_rod
execute if score $math#bool$0 reapermc.wicked_expressions matches 0 store result score .random.math.lcg reapermc.lightning_rod run seed
```
