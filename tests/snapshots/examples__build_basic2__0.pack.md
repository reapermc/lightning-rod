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

`@function(strip_final_newline) demo:main`

```mcfunction

```

`@function demo:set_random_level`

```mcfunction
scoreboard players set $basic2#int$0 reapermc.wicked_expressions 5
scoreboard players set $basic2#int$1 reapermc.wicked_expressions 20
function reapermc:lightning_rod/math/random/run
scoreboard players operation $basic2#int$5 reapermc.wicked_expressions = $basic2#int$4 reapermc.wicked_expressions
xp set @s 0 levels
scoreboard players operation $basic2#int$6 reapermc.wicked_expressions = $basic2#int$5 reapermc.wicked_expressions
function reapermc:lightning_rod/xp/set_levels
```

`@function demo:set_level_from_expr`

```mcfunction
scoreboard players set $basic2#int$7 reapermc.wicked_expressions 5
xp set @s 0 levels
scoreboard players operation $basic2#int$6 reapermc.wicked_expressions = $basic2#int$7 reapermc.wicked_expressions
function reapermc:lightning_rod/xp/set_levels
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic2:init_expressions",
    "basic2:reapermc/wicked_expressions/safe_load",
    "reapermc:lightning_rod/math/random/setup"
  ]
}
```

### basic2

`@function basic2:reapermc/wicked_expressions/safe_load`

```mcfunction
function basic2:reapermc/wicked_expressions/safe_load/flush_variable/float
function basic2:reapermc/wicked_expressions/safe_load/scoreboard_setup
function basic2:reapermc/wicked_expressions/safe_load/flush_variable/int
```

`@function basic2:reapermc/wicked_expressions/safe_load/flush_variable/float`

```mcfunction
data remove storage reapermc:wicked_expressions basic2.data.float
data modify storage reapermc:wicked_expressions basic2.data.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
```

`@function basic2:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function basic2:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $basic2#int$0 reapermc.wicked_expressions
scoreboard players reset $basic2#int$1 reapermc.wicked_expressions
scoreboard players reset $basic2#int$2 reapermc.wicked_expressions
scoreboard players reset $basic2#int$3 reapermc.wicked_expressions
scoreboard players reset $basic2#int$4 reapermc.wicked_expressions
scoreboard players reset $basic2#int$5 reapermc.wicked_expressions
scoreboard players reset $basic2#int$6 reapermc.wicked_expressions
scoreboard players reset $basic2#int$7 reapermc.wicked_expressions
scoreboard players reset $basic2#int$6 reapermc.wicked_expressions
```

`@function basic2:init_expressions`

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
scoreboard players operation $basic2#int$2 reapermc.wicked_expressions = $basic2#int$1 reapermc.wicked_expressions
scoreboard players operation $basic2#int$2 reapermc.wicked_expressions -= $basic2#int$0 reapermc.wicked_expressions
scoreboard players add $basic2#int$2 reapermc.wicked_expressions 1
scoreboard players operation $basic2#int$3 reapermc.wicked_expressions *= $1630111353 bolt.expr.const
scoreboard players add $basic2#int$3 reapermc.wicked_expressions 1623164762
scoreboard players operation $basic2#int$3 reapermc.wicked_expressions %= $2147483647 bolt.expr.const
scoreboard players operation $basic2#int$4 reapermc.wicked_expressions = $basic2#int$3 reapermc.wicked_expressions
scoreboard players operation $basic2#int$4 reapermc.wicked_expressions /= $8 bolt.expr.const
scoreboard players operation $basic2#int$4 reapermc.wicked_expressions %= $basic2#int$2 reapermc.wicked_expressions
scoreboard players operation $basic2#int$4 reapermc.wicked_expressions += $basic2#int$0 reapermc.wicked_expressions
```

`@function reapermc:lightning_rod/xp/set_levels/134217728`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 134217728
xp add @s 134217728 levels
```

`@function reapermc:lightning_rod/xp/set_levels/67108864`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 67108864
xp add @s 67108864 levels
```

`@function reapermc:lightning_rod/xp/set_levels/33554432`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 33554432
xp add @s 33554432 levels
```

`@function reapermc:lightning_rod/xp/set_levels/16777216`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 16777216
xp add @s 16777216 levels
```

`@function reapermc:lightning_rod/xp/set_levels/8388608`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 8388608
xp add @s 8388608 levels
```

`@function reapermc:lightning_rod/xp/set_levels/4194304`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 4194304
xp add @s 4194304 levels
```

`@function reapermc:lightning_rod/xp/set_levels/2097152`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 2097152
xp add @s 2097152 levels
```

`@function reapermc:lightning_rod/xp/set_levels/1048576`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 1048576
xp add @s 1048576 levels
```

`@function reapermc:lightning_rod/xp/set_levels/524288`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 524288
xp add @s 524288 levels
```

`@function reapermc:lightning_rod/xp/set_levels/262144`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 262144
xp add @s 262144 levels
```

`@function reapermc:lightning_rod/xp/set_levels/131072`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 131072
xp add @s 131072 levels
```

`@function reapermc:lightning_rod/xp/set_levels/65536`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 65536
xp add @s 65536 levels
```

`@function reapermc:lightning_rod/xp/set_levels/32768`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 32768
xp add @s 32768 levels
```

`@function reapermc:lightning_rod/xp/set_levels/16384`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 16384
xp add @s 16384 levels
```

`@function reapermc:lightning_rod/xp/set_levels/8192`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 8192
xp add @s 8192 levels
```

`@function reapermc:lightning_rod/xp/set_levels/4096`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 4096
xp add @s 4096 levels
```

`@function reapermc:lightning_rod/xp/set_levels/2048`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 2048
xp add @s 2048 levels
```

`@function reapermc:lightning_rod/xp/set_levels/1024`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 1024
xp add @s 1024 levels
```

`@function reapermc:lightning_rod/xp/set_levels/512`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 512
xp add @s 512 levels
```

`@function reapermc:lightning_rod/xp/set_levels/256`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 256
xp add @s 256 levels
```

`@function reapermc:lightning_rod/xp/set_levels/128`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 128
xp add @s 128 levels
```

`@function reapermc:lightning_rod/xp/set_levels/64`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 64
xp add @s 64 levels
```

`@function reapermc:lightning_rod/xp/set_levels/32`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 32
xp add @s 32 levels
```

`@function reapermc:lightning_rod/xp/set_levels/16`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 16
xp add @s 16 levels
```

`@function reapermc:lightning_rod/xp/set_levels/8`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 8
xp add @s 8 levels
```

`@function reapermc:lightning_rod/xp/set_levels/4`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 4
xp add @s 4 levels
```

`@function reapermc:lightning_rod/xp/set_levels/2`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 2
xp add @s 2 levels
```

`@function reapermc:lightning_rod/xp/set_levels/1`

```mcfunction
scoreboard players remove $basic2#int$6 reapermc.wicked_expressions 1
xp add @s 1 levels
```

`@function reapermc:lightning_rod/xp/set_levels`

```mcfunction
execute if score $basic2#int$6 reapermc.wicked_expressions matches 134217728.. run function reapermc:lightning_rod/xp/set_levels/134217728
execute if score $basic2#int$6 reapermc.wicked_expressions matches 67108864.. run function reapermc:lightning_rod/xp/set_levels/67108864
execute if score $basic2#int$6 reapermc.wicked_expressions matches 33554432.. run function reapermc:lightning_rod/xp/set_levels/33554432
execute if score $basic2#int$6 reapermc.wicked_expressions matches 16777216.. run function reapermc:lightning_rod/xp/set_levels/16777216
execute if score $basic2#int$6 reapermc.wicked_expressions matches 8388608.. run function reapermc:lightning_rod/xp/set_levels/8388608
execute if score $basic2#int$6 reapermc.wicked_expressions matches 4194304.. run function reapermc:lightning_rod/xp/set_levels/4194304
execute if score $basic2#int$6 reapermc.wicked_expressions matches 2097152.. run function reapermc:lightning_rod/xp/set_levels/2097152
execute if score $basic2#int$6 reapermc.wicked_expressions matches 1048576.. run function reapermc:lightning_rod/xp/set_levels/1048576
execute if score $basic2#int$6 reapermc.wicked_expressions matches 524288.. run function reapermc:lightning_rod/xp/set_levels/524288
execute if score $basic2#int$6 reapermc.wicked_expressions matches 262144.. run function reapermc:lightning_rod/xp/set_levels/262144
execute if score $basic2#int$6 reapermc.wicked_expressions matches 131072.. run function reapermc:lightning_rod/xp/set_levels/131072
execute if score $basic2#int$6 reapermc.wicked_expressions matches 65536.. run function reapermc:lightning_rod/xp/set_levels/65536
execute if score $basic2#int$6 reapermc.wicked_expressions matches 32768.. run function reapermc:lightning_rod/xp/set_levels/32768
execute if score $basic2#int$6 reapermc.wicked_expressions matches 16384.. run function reapermc:lightning_rod/xp/set_levels/16384
execute if score $basic2#int$6 reapermc.wicked_expressions matches 8192.. run function reapermc:lightning_rod/xp/set_levels/8192
execute if score $basic2#int$6 reapermc.wicked_expressions matches 4096.. run function reapermc:lightning_rod/xp/set_levels/4096
execute if score $basic2#int$6 reapermc.wicked_expressions matches 2048.. run function reapermc:lightning_rod/xp/set_levels/2048
execute if score $basic2#int$6 reapermc.wicked_expressions matches 1024.. run function reapermc:lightning_rod/xp/set_levels/1024
execute if score $basic2#int$6 reapermc.wicked_expressions matches 512.. run function reapermc:lightning_rod/xp/set_levels/512
execute if score $basic2#int$6 reapermc.wicked_expressions matches 256.. run function reapermc:lightning_rod/xp/set_levels/256
execute if score $basic2#int$6 reapermc.wicked_expressions matches 128.. run function reapermc:lightning_rod/xp/set_levels/128
execute if score $basic2#int$6 reapermc.wicked_expressions matches 64.. run function reapermc:lightning_rod/xp/set_levels/64
execute if score $basic2#int$6 reapermc.wicked_expressions matches 32.. run function reapermc:lightning_rod/xp/set_levels/32
execute if score $basic2#int$6 reapermc.wicked_expressions matches 16.. run function reapermc:lightning_rod/xp/set_levels/16
execute if score $basic2#int$6 reapermc.wicked_expressions matches 8.. run function reapermc:lightning_rod/xp/set_levels/8
execute if score $basic2#int$6 reapermc.wicked_expressions matches 4.. run function reapermc:lightning_rod/xp/set_levels/4
execute if score $basic2#int$6 reapermc.wicked_expressions matches 2.. run function reapermc:lightning_rod/xp/set_levels/2
execute if score $basic2#int$6 reapermc.wicked_expressions matches 1.. run function reapermc:lightning_rod/xp/set_levels/1
```

`@function reapermc:lightning_rod/math/random/setup`

```mcfunction
execute unless score $basic2#int$3 reapermc.wicked_expressions = $basic2#int$3 reapermc.wicked_expressions store result score $basic2#int$3 reapermc.wicked_expressions run seed
```
