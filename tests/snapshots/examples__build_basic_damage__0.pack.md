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
scoreboard players set $basic_damage#int$0 reapermc.wicked_expressions 5
damage @s 10 reapermc:lightning_rod/const/drown/base
scoreboard players operation $basic_damage#int$1 reapermc.wicked_expressions = $basic_damage#int$0 reapermc.wicked_expressions
function reapermc:lightning_rod/damage/drown
scoreboard players operation $basic_damage#int$1 reapermc.wicked_expressions = $basic_damage#int$0 reapermc.wicked_expressions
scoreboard players add $basic_damage#int$1 reapermc.wicked_expressions 3
function reapermc:lightning_rod/damage/generic
damage @s 5 reapermc:lightning_rod/const/generic/base
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_damage:reapermc/wicked_expressions/safe_load"
  ]
}
```

`@damage_type_tag minecraft:bypasses_cooldown`

```json
{
  "values": [
    "reapermc:lightning_rod/drown/base_ignore_cd",
    "reapermc:lightning_rod/generic/base_ignore_cd"
  ]
}
```

### basic_damage

`@function basic_damage:reapermc/wicked_expressions/safe_load`

```mcfunction
function basic_damage:reapermc/wicked_expressions/safe_load/flush_variable/float
function basic_damage:reapermc/wicked_expressions/safe_load/scoreboard_setup
function basic_damage:reapermc/wicked_expressions/safe_load/flush_variable/int
function basic_damage:reapermc/wicked_expressions/safe_load/flush_variable/bool
```

`@function basic_damage:reapermc/wicked_expressions/safe_load/flush_variable/float`

```mcfunction
data remove storage reapermc:wicked_expressions basic_damage.data.float
data modify storage reapermc:wicked_expressions basic_damage.data.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
```

`@function basic_damage:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function basic_damage:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $basic_damage#int$0 reapermc.wicked_expressions
scoreboard players reset $basic_damage#int$1 reapermc.wicked_expressions
scoreboard players reset $basic_damage#int$1 reapermc.wicked_expressions
```

`@function basic_damage:reapermc/wicked_expressions/safe_load/flush_variable/bool`

```mcfunction
scoreboard players reset $basic_damage#bool$0 reapermc.wicked_expressions
scoreboard players reset $basic_damage#bool$0 reapermc.wicked_expressions
```

### reapermc

`@function reapermc:lightning_rod/damage/drown/nested_1`

```mcfunction
damage @s 2048 reapermc:lightning_rod/drown/base
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 2048
```

`@function reapermc:lightning_rod/damage/drown/nested_2`

```mcfunction
damage @s 1024 reapermc:lightning_rod/drown/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 1024
```

`@function reapermc:lightning_rod/damage/drown/nested_3`

```mcfunction
damage @s 512 reapermc:lightning_rod/drown/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 512
```

`@function reapermc:lightning_rod/damage/drown/nested_4`

```mcfunction
damage @s 256 reapermc:lightning_rod/drown/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 256
```

`@function reapermc:lightning_rod/damage/drown/nested_5`

```mcfunction
damage @s 128 reapermc:lightning_rod/drown/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 128
```

`@function reapermc:lightning_rod/damage/drown/nested_6`

```mcfunction
damage @s 64 reapermc:lightning_rod/drown/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 64
```

`@function reapermc:lightning_rod/damage/drown/nested_7`

```mcfunction
damage @s 32 reapermc:lightning_rod/drown/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 32
```

`@function reapermc:lightning_rod/damage/drown/nested_8`

```mcfunction
damage @s 16 reapermc:lightning_rod/drown/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 16
```

`@function reapermc:lightning_rod/damage/drown/nested_9`

```mcfunction
damage @s 8 reapermc:lightning_rod/drown/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 8
```

`@function reapermc:lightning_rod/damage/drown/nested_10`

```mcfunction
damage @s 4 reapermc:lightning_rod/drown/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 4
```

`@function reapermc:lightning_rod/damage/drown/nested_11`

```mcfunction
damage @s 2 reapermc:lightning_rod/drown/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 2
```

`@function reapermc:lightning_rod/damage/drown/nested_12`

```mcfunction
damage @s 1 reapermc:lightning_rod/drown/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 1
```

`@function reapermc:lightning_rod/damage/generic/nested_14`

```mcfunction
damage @s 2048 reapermc:lightning_rod/generic/base
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 2048
```

`@function reapermc:lightning_rod/damage/generic/nested_15`

```mcfunction
damage @s 1024 reapermc:lightning_rod/generic/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 1024
```

`@function reapermc:lightning_rod/damage/generic/nested_16`

```mcfunction
damage @s 512 reapermc:lightning_rod/generic/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 512
```

`@function reapermc:lightning_rod/damage/generic/nested_17`

```mcfunction
damage @s 256 reapermc:lightning_rod/generic/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 256
```

`@function reapermc:lightning_rod/damage/generic/nested_18`

```mcfunction
damage @s 128 reapermc:lightning_rod/generic/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 128
```

`@function reapermc:lightning_rod/damage/generic/nested_19`

```mcfunction
damage @s 64 reapermc:lightning_rod/generic/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 64
```

`@function reapermc:lightning_rod/damage/generic/nested_20`

```mcfunction
damage @s 32 reapermc:lightning_rod/generic/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 32
```

`@function reapermc:lightning_rod/damage/generic/nested_21`

```mcfunction
damage @s 16 reapermc:lightning_rod/generic/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 16
```

`@function reapermc:lightning_rod/damage/generic/nested_22`

```mcfunction
damage @s 8 reapermc:lightning_rod/generic/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 8
```

`@function reapermc:lightning_rod/damage/generic/nested_23`

```mcfunction
damage @s 4 reapermc:lightning_rod/generic/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 4
```

`@function reapermc:lightning_rod/damage/generic/nested_24`

```mcfunction
damage @s 2 reapermc:lightning_rod/generic/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 2
```

`@function reapermc:lightning_rod/damage/generic/nested_25`

```mcfunction
damage @s 1 reapermc:lightning_rod/generic/base_ignore_cd
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 1
```

`@function reapermc:lightning_rod/damage/drown`

```mcfunction
execute store success score $basic_damage#bool$0 reapermc.wicked_expressions run damage @s 1
scoreboard players operation $temp reapermc.wicked_expressions = $basic_damage#bool$0 reapermc.wicked_expressions
execute if score $temp reapermc.wicked_expressions matches 0 run return 0
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 1
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 2048.. run function reapermc:lightning_rod/damage/drown/nested_1
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 1024.. run function reapermc:lightning_rod/damage/drown/nested_2
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 512.. run function reapermc:lightning_rod/damage/drown/nested_3
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 256.. run function reapermc:lightning_rod/damage/drown/nested_4
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 128.. run function reapermc:lightning_rod/damage/drown/nested_5
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 64.. run function reapermc:lightning_rod/damage/drown/nested_6
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 32.. run function reapermc:lightning_rod/damage/drown/nested_7
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 16.. run function reapermc:lightning_rod/damage/drown/nested_8
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 8.. run function reapermc:lightning_rod/damage/drown/nested_9
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 4.. run function reapermc:lightning_rod/damage/drown/nested_10
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 2.. run function reapermc:lightning_rod/damage/drown/nested_11
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 1.. run function reapermc:lightning_rod/damage/drown/nested_12
```

`@function reapermc:lightning_rod/damage/generic`

```mcfunction
execute store success score $basic_damage#bool$0 reapermc.wicked_expressions run damage @s 1
scoreboard players operation $temp reapermc.wicked_expressions = $basic_damage#bool$0 reapermc.wicked_expressions
execute if score $temp reapermc.wicked_expressions matches 0 run return 0
scoreboard players remove $basic_damage#int$1 reapermc.wicked_expressions 1
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 2048.. run function reapermc:lightning_rod/damage/generic/nested_14
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 1024.. run function reapermc:lightning_rod/damage/generic/nested_15
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 512.. run function reapermc:lightning_rod/damage/generic/nested_16
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 256.. run function reapermc:lightning_rod/damage/generic/nested_17
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 128.. run function reapermc:lightning_rod/damage/generic/nested_18
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 64.. run function reapermc:lightning_rod/damage/generic/nested_19
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 32.. run function reapermc:lightning_rod/damage/generic/nested_20
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 16.. run function reapermc:lightning_rod/damage/generic/nested_21
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 8.. run function reapermc:lightning_rod/damage/generic/nested_22
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 4.. run function reapermc:lightning_rod/damage/generic/nested_23
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 2.. run function reapermc:lightning_rod/damage/generic/nested_24
execute if score $basic_damage#int$1 reapermc.wicked_expressions matches 1.. run function reapermc:lightning_rod/damage/generic/nested_25
```

`@damage_type reapermc:lightning_rod/const/drown/base`

```json
{
  "message_id": "drown",
  "exhaustion": 0,
  "scaling": "when_caused_by_living_non_player"
}
```

`@damage_type reapermc:lightning_rod/drown/base_ignore_cd`

```json
{
  "message_id": "drown",
  "exhaustion": 0,
  "scaling": "never"
}
```

`@damage_type reapermc:lightning_rod/drown/base`

```json
{
  "message_id": "drown",
  "exhaustion": 0,
  "scaling": "never"
}
```

`@damage_type reapermc:lightning_rod/generic/base_ignore_cd`

```json
{
  "message_id": "generic",
  "exhaustion": 0,
  "scaling": "never"
}
```

`@damage_type reapermc:lightning_rod/generic/base`

```json
{
  "message_id": "generic",
  "exhaustion": 0,
  "scaling": "never"
}
```

`@damage_type reapermc:lightning_rod/const/generic/base`

```json
{
  "message_id": "generic",
  "exhaustion": 0,
  "scaling": "never"
}
```
