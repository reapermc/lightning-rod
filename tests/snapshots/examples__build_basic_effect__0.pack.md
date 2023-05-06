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
effect give @s speed 10 5 true
execute if entity @s[type=player] run summon area_effect_cloud ~ ~ ~ {Radius: 0.0f, Age: 4, WaitTime: 0, Duration: 6, Effects: [{Id: 1b, Amplifier: 5b, Duration: 10, ShowParticles: 0b}]}
execute if entity @s[type=!player] run data modify entity @s ActiveEffects append value {Id: 1, Duration: 10, Amplifier: 5b, ShowIcon: 0b, ShowParticles: 0b, Ambient: 0b}
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_effect:reapermc/wicked_expressions/safe_load"
  ]
}
```

### basic_effect

`@function basic_effect:reapermc/wicked_expressions/safe_load`

```mcfunction
function basic_effect:reapermc/wicked_expressions/safe_load/scoreboard_setup
function basic_effect:reapermc/wicked_expressions/safe_load/flush_variable/int
```

`@function basic_effect:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function basic_effect:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $basic_effect#int$0 reapermc.wicked_expressions
```
