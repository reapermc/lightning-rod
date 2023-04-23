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
help
# maybe a comment?
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_raw_cmd:reapermc/wicked_expressions/scoreboard_setup",
    "basic_raw_cmd:reapermc/wicked_expressions/runtime_var_flush_score"
  ]
}
```

### basic_raw_cmd

`@function basic_raw_cmd:reapermc/wicked_expressions/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function basic_raw_cmd:reapermc/wicked_expressions/runtime_var_flush_score`

```mcfunction
scoreboard players reset $basic_raw_cmd#int$0 reapermc.wicked_expressions
```
