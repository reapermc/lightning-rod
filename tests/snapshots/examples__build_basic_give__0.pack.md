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
give @s stick 1
give @s minecraft:stone 1
give @s diamond_sword{id: "custom_sword_0"} 1
give @s diamond_sword{id: "custom_sword_0"} 2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_give:reapermc/wicked_expressions/safe_load"
  ]
}
```

### basic_give

`@function basic_give:reapermc/wicked_expressions/safe_load`

```mcfunction
function basic_give:reapermc/wicked_expressions/safe_load/scoreboard_setup
function basic_give:reapermc/wicked_expressions/safe_load/flush_variable/int
```

`@function basic_give:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function basic_give:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $basic_give#int$0 reapermc.wicked_expressions
```
