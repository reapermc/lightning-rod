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
function basic_raw_cmd:reapermc/wicked_expressions/safe_load/flush_variable/float
```

`@function basic_raw_cmd:reapermc/wicked_expressions/safe_load/flush_variable/float`

```mcfunction
data remove storage reapermc:wicked_expressions basic_raw_cmd.data.float
data modify storage reapermc:wicked_expressions basic_raw_cmd.data.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
```
