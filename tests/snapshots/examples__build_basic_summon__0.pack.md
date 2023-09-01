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
summon creeper ~ ~ ~ {Tags: ["basic_summon.summon.init"]}
execute as @e[type=minecraft:creeper, tag=basic_summon.summon.init] run function demo:main/summon_helper/nested_0
```

`@function demo:main/summon_helper/nested_0`

```mcfunction
say hello!
tag @s remove basic_summon.summon.init
```
