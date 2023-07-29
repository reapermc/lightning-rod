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
    "basic_clear:reapermc/wicked_expressions/safe_load"
  ]
}
```

### basic_clear

`@function basic_clear:reapermc/wicked_expressions/safe_load`

```mcfunction
function basic_clear:reapermc/wicked_expressions/safe_load/flush_variable/float
```

`@function basic_clear:reapermc/wicked_expressions/safe_load/flush_variable/float`

```mcfunction
data remove storage reapermc:wicked_expressions basic_clear.data.float
data modify storage reapermc:wicked_expressions basic_clear.data.float append value [0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f]
```
