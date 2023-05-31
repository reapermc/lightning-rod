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
gamemode survival
gamemode survival
gamemode creative
gamemode creative
gamemode adventure
gamemode adventure
gamemode spectator
gamemode spectator
execute store result score $basic_gamemode#int$0 reapermc.wicked_expressions run data get entity @s playerGameType
tellraw @a {"score": {"name": "$basic_gamemode#int$0", "objective": "reapermc.wicked_expressions"}}
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_gamemode:reapermc/wicked_expressions/safe_load"
  ]
}
```

### basic_gamemode

`@function basic_gamemode:reapermc/wicked_expressions/safe_load`

```mcfunction
function basic_gamemode:reapermc/wicked_expressions/safe_load/flush_variable/int
```

`@function basic_gamemode:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $basic_gamemode#int$0 reapermc.wicked_expressions
```
