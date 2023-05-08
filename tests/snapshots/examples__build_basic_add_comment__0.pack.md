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

`@function(strip_final_newline) demo:main`

```mcfunction

```

`@function demo:demo`

```mcfunction
# test comment
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_add_comment:reapermc/wicked_expressions/safe_load"
  ]
}
```

### basic_add_comment

`@function basic_add_comment:reapermc/wicked_expressions/safe_load`

```mcfunction
function basic_add_comment:reapermc/wicked_expressions/safe_load/scoreboard_setup
function basic_add_comment:reapermc/wicked_expressions/safe_load/flush_variable/int
```

`@function basic_add_comment:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function basic_add_comment:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $basic_add_comment#int$0 reapermc.wicked_expressions
```
