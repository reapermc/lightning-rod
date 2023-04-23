# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 10,
    "description": ""
  }
}
```

### demo

`@function demo:main`

```mcfunction
clear @s stick
clear @s minecraft:stone
clear @s diamond_sword{id: "custom_sword_0"}
clear @s netherite_pickaxe 69
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_clear:reapermc/wicked_expressions/scoreboard_setup",
    "basic_clear:reapermc/wicked_expressions/runtime_var_flush_score"
  ]
}
```

### basic_clear

`@function basic_clear:reapermc/wicked_expressions/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function basic_clear:reapermc/wicked_expressions/runtime_var_flush_score`

```mcfunction
scoreboard players reset $basic_clear#int$0 reapermc.wicked_expressions
```
