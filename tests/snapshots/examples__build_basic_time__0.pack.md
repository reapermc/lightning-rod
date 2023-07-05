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
execute store result score $basic_time#int$0 reapermc.wicked_expressions run time query gametime
tellraw @s {"score": {"name": "$basic_time#int$0", "objective": "reapermc.wicked_expressions"}}
execute store result score $basic_time#int$1 reapermc.wicked_expressions run time query daytime
tellraw @s {"score": {"name": "$basic_time#int$1", "objective": "reapermc.wicked_expressions"}}
execute store result score $basic_time#int$2 reapermc.wicked_expressions run time query day
tellraw @s {"score": {"name": "$basic_time#int$2", "objective": "reapermc.wicked_expressions"}}
time set 1200
scoreboard players set $basic_time#int$4 reapermc.wicked_expressions 5600
scoreboard players operation $basic_time#int$5 reapermc.wicked_expressions = $basic_time#int$4 reapermc.wicked_expressions
function reapermc:lightning_rod/time/set_dynamic
```

### reapermc

`@function reapermc:lightning_rod/time/set_dynamic_32768`

```mcfunction
scoreboard players remove $basic_time#int$5 reapermc.wicked_expressions 32768
time add 32768
```

`@function reapermc:lightning_rod/time/set_dynamic_16384`

```mcfunction
scoreboard players remove $basic_time#int$5 reapermc.wicked_expressions 16384
time add 16384
```

`@function reapermc:lightning_rod/time/set_dynamic_8192`

```mcfunction
scoreboard players remove $basic_time#int$5 reapermc.wicked_expressions 8192
time add 8192
```

`@function reapermc:lightning_rod/time/set_dynamic_4096`

```mcfunction
scoreboard players remove $basic_time#int$5 reapermc.wicked_expressions 4096
time add 4096
```

`@function reapermc:lightning_rod/time/set_dynamic_2048`

```mcfunction
scoreboard players remove $basic_time#int$5 reapermc.wicked_expressions 2048
time add 2048
```

`@function reapermc:lightning_rod/time/set_dynamic_1024`

```mcfunction
scoreboard players remove $basic_time#int$5 reapermc.wicked_expressions 1024
time add 1024
```

`@function reapermc:lightning_rod/time/set_dynamic_512`

```mcfunction
scoreboard players remove $basic_time#int$5 reapermc.wicked_expressions 512
time add 512
```

`@function reapermc:lightning_rod/time/set_dynamic_256`

```mcfunction
scoreboard players remove $basic_time#int$5 reapermc.wicked_expressions 256
time add 256
```

`@function reapermc:lightning_rod/time/set_dynamic_128`

```mcfunction
scoreboard players remove $basic_time#int$5 reapermc.wicked_expressions 128
time add 128
```

`@function reapermc:lightning_rod/time/set_dynamic_64`

```mcfunction
scoreboard players remove $basic_time#int$5 reapermc.wicked_expressions 64
time add 64
```

`@function reapermc:lightning_rod/time/set_dynamic_32`

```mcfunction
scoreboard players remove $basic_time#int$5 reapermc.wicked_expressions 32
time add 32
```

`@function reapermc:lightning_rod/time/set_dynamic_16`

```mcfunction
scoreboard players remove $basic_time#int$5 reapermc.wicked_expressions 16
time add 16
```

`@function reapermc:lightning_rod/time/set_dynamic_8`

```mcfunction
scoreboard players remove $basic_time#int$5 reapermc.wicked_expressions 8
time add 8
```

`@function reapermc:lightning_rod/time/set_dynamic_4`

```mcfunction
scoreboard players remove $basic_time#int$5 reapermc.wicked_expressions 4
time add 4
```

`@function reapermc:lightning_rod/time/set_dynamic_2`

```mcfunction
scoreboard players remove $basic_time#int$5 reapermc.wicked_expressions 2
time add 2
```

`@function reapermc:lightning_rod/time/set_dynamic_1`

```mcfunction
scoreboard players remove $basic_time#int$5 reapermc.wicked_expressions 1
time add 1
```

`@function reapermc:lightning_rod/time/set_dynamic`

```mcfunction
time set 0
execute if score $basic_time#int$5 reapermc.wicked_expressions matches 32768.. run function reapermc:lightning_rod/time/set_dynamic_32768
execute if score $basic_time#int$5 reapermc.wicked_expressions matches 16384.. run function reapermc:lightning_rod/time/set_dynamic_16384
execute if score $basic_time#int$5 reapermc.wicked_expressions matches 8192.. run function reapermc:lightning_rod/time/set_dynamic_8192
execute if score $basic_time#int$5 reapermc.wicked_expressions matches 4096.. run function reapermc:lightning_rod/time/set_dynamic_4096
execute if score $basic_time#int$5 reapermc.wicked_expressions matches 2048.. run function reapermc:lightning_rod/time/set_dynamic_2048
execute if score $basic_time#int$5 reapermc.wicked_expressions matches 1024.. run function reapermc:lightning_rod/time/set_dynamic_1024
execute if score $basic_time#int$5 reapermc.wicked_expressions matches 512.. run function reapermc:lightning_rod/time/set_dynamic_512
execute if score $basic_time#int$5 reapermc.wicked_expressions matches 256.. run function reapermc:lightning_rod/time/set_dynamic_256
execute if score $basic_time#int$5 reapermc.wicked_expressions matches 128.. run function reapermc:lightning_rod/time/set_dynamic_128
execute if score $basic_time#int$5 reapermc.wicked_expressions matches 64.. run function reapermc:lightning_rod/time/set_dynamic_64
execute if score $basic_time#int$5 reapermc.wicked_expressions matches 32.. run function reapermc:lightning_rod/time/set_dynamic_32
execute if score $basic_time#int$5 reapermc.wicked_expressions matches 16.. run function reapermc:lightning_rod/time/set_dynamic_16
execute if score $basic_time#int$5 reapermc.wicked_expressions matches 8.. run function reapermc:lightning_rod/time/set_dynamic_8
execute if score $basic_time#int$5 reapermc.wicked_expressions matches 4.. run function reapermc:lightning_rod/time/set_dynamic_4
execute if score $basic_time#int$5 reapermc.wicked_expressions matches 2.. run function reapermc:lightning_rod/time/set_dynamic_2
execute if score $basic_time#int$5 reapermc.wicked_expressions matches 1.. run function reapermc:lightning_rod/time/set_dynamic_1
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_time:reapermc/wicked_expressions/safe_load"
  ]
}
```

### basic_time

`@function basic_time:reapermc/wicked_expressions/safe_load`

```mcfunction
function basic_time:reapermc/wicked_expressions/safe_load/scoreboard_setup
function basic_time:reapermc/wicked_expressions/safe_load/flush_variable/int
```

`@function basic_time:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function basic_time:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $basic_time#int$0 reapermc.wicked_expressions
scoreboard players reset $basic_time#int$1 reapermc.wicked_expressions
scoreboard players reset $basic_time#int$2 reapermc.wicked_expressions
scoreboard players reset $basic_time#int$3 reapermc.wicked_expressions
scoreboard players reset $basic_time#int$4 reapermc.wicked_expressions
scoreboard players reset $basic_time#int$5 reapermc.wicked_expressions
```
