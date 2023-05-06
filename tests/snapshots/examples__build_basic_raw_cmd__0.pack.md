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
help
# maybe a comment?
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_raw_cmd:reapermc/wicked_expressions/safe_load"
  ]
}
```

### basic_raw_cmd

`@function basic_raw_cmd:reapermc/wicked_expressions/safe_load`

```mcfunction
function basic_raw_cmd:reapermc/wicked_expressions/safe_load/scoreboard_setup
function basic_raw_cmd:reapermc/wicked_expressions/safe_load/flush_variable/int
```

`@function basic_raw_cmd:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function basic_raw_cmd:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $basic_raw_cmd#int$0 reapermc.wicked_expressions
```
