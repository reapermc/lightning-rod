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
function basic_give:reapermc/wicked_expressions/safe_load/flush_variable/float
```

`@function basic_give:reapermc/wicked_expressions/safe_load/flush_variable/float`

```mcfunction
data remove storage reapermc:wicked_expressions basic_give.data.float
data modify storage reapermc:wicked_expressions basic_give.data.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
```
