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
advancement grant @s only test:test
advancement revoke @s everything
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_advancement:reapermc/wicked_expressions/scoreboard_setup",
    "basic_advancement:reapermc/wicked_expressions/runtime_var_flush_score"
  ]
}
```

### basic_advancement

`@function basic_advancement:reapermc/wicked_expressions/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function basic_advancement:reapermc/wicked_expressions/runtime_var_flush_score`

```mcfunction
scoreboard players reset $basic_advancement#int$0 reapermc.wicked_expressions
```
