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
execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.2 ~ run function demo:main/nested_execute_6
```

`@function demo:main/nested_execute_0`

```mcfunction
particle small_flame ^ ^ ^ 0 0 0 0 0 force
particle small_flame ^ ^ ^0.25 0 0 0 0 0 force
particle small_flame ^ ^ ^0.5 0 0 0 0 0 force
particle small_flame ^ ^ ^0.75 0 0 0 0 0 force
particle small_flame ^ ^ ^1.0 0 0 0 0 0 force
particle small_flame ^ ^ ^1.25 0 0 0 0 0 force
particle small_flame ^ ^ ^1.5 0 0 0 0 0 force
particle small_flame ^ ^ ^1.75 0 0 0 0 0 force
particle small_flame ^ ^ ^2.0 0 0 0 0 0 force
particle small_flame ^ ^ ^2.25 0 0 0 0 0 force
particle small_flame ^ ^ ^2.5 0 0 0 0 0 force
particle small_flame ^ ^ ^2.75 0 0 0 0 0 force
particle small_flame ^ ^ ^3.0 0 0 0 0 0 force
particle small_flame ^ ^ ^3.25 0 0 0 0 0 force
particle small_flame ^ ^ ^3.5 0 0 0 0 0 force
particle small_flame ^ ^ ^3.75 0 0 0 0 0 force
particle small_flame ^ ^ ^4.0 0 0 0 0 0 force
particle small_flame ^ ^ ^4.25 0 0 0 0 0 force
particle small_flame ^ ^ ^4.5 0 0 0 0 0 force
particle small_flame ^ ^ ^4.75 0 0 0 0 0 force
particle small_flame ^ ^ ^5.0 0 0 0 0 0 force
particle small_flame ^ ^ ^5.25 0 0 0 0 0 force
particle small_flame ^ ^ ^5.5 0 0 0 0 0 force
particle small_flame ^ ^ ^5.75 0 0 0 0 0 force
particle small_flame ^ ^ ^6.0 0 0 0 0 0 force
particle small_flame ^ ^ ^6.25 0 0 0 0 0 force
particle small_flame ^ ^ ^6.5 0 0 0 0 0 force
particle small_flame ^ ^ ^6.75 0 0 0 0 0 force
particle small_flame ^ ^ ^7.0 0 0 0 0 0 force
particle small_flame ^ ^ ^7.25 0 0 0 0 0 force
particle small_flame ^ ^ ^7.5 0 0 0 0 0 force
particle small_flame ^ ^ ^7.75 0 0 0 0 0 force
particle small_flame ^ ^ ^8.0 0 0 0 0 0 force
particle small_flame ^ ^ ^8.25 0 0 0 0 0 force
particle small_flame ^ ^ ^8.5 0 0 0 0 0 force
particle small_flame ^ ^ ^8.75 0 0 0 0 0 force
particle small_flame ^ ^ ^9.0 0 0 0 0 0 force
particle small_flame ^ ^ ^9.25 0 0 0 0 0 force
particle small_flame ^ ^ ^9.5 0 0 0 0 0 force
particle small_flame ^ ^ ^9.75 0 0 0 0 0 force
```

`@function demo:main/nested_execute_1`

```mcfunction
tp @s ~ ~ ~ ~ ~
execute at @s run tp @s ~ ~ ~ facing ^-2 ^ ^10
execute at @s run function demo:main/nested_execute_0
kill @s
```

`@function demo:main/nested_execute_2`

```mcfunction
particle small_flame ^ ^ ^ 0 0 0 0 0 force
particle small_flame ^ ^ ^0.25 0 0 0 0 0 force
particle small_flame ^ ^ ^0.5 0 0 0 0 0 force
particle small_flame ^ ^ ^0.75 0 0 0 0 0 force
particle small_flame ^ ^ ^1.0 0 0 0 0 0 force
particle small_flame ^ ^ ^1.25 0 0 0 0 0 force
particle small_flame ^ ^ ^1.5 0 0 0 0 0 force
particle small_flame ^ ^ ^1.75 0 0 0 0 0 force
particle small_flame ^ ^ ^2.0 0 0 0 0 0 force
particle small_flame ^ ^ ^2.25 0 0 0 0 0 force
particle small_flame ^ ^ ^2.5 0 0 0 0 0 force
particle small_flame ^ ^ ^2.75 0 0 0 0 0 force
particle small_flame ^ ^ ^3.0 0 0 0 0 0 force
particle small_flame ^ ^ ^3.25 0 0 0 0 0 force
particle small_flame ^ ^ ^3.5 0 0 0 0 0 force
particle small_flame ^ ^ ^3.75 0 0 0 0 0 force
particle small_flame ^ ^ ^4.0 0 0 0 0 0 force
particle small_flame ^ ^ ^4.25 0 0 0 0 0 force
particle small_flame ^ ^ ^4.5 0 0 0 0 0 force
particle small_flame ^ ^ ^4.75 0 0 0 0 0 force
particle small_flame ^ ^ ^5.0 0 0 0 0 0 force
particle small_flame ^ ^ ^5.25 0 0 0 0 0 force
particle small_flame ^ ^ ^5.5 0 0 0 0 0 force
particle small_flame ^ ^ ^5.75 0 0 0 0 0 force
particle small_flame ^ ^ ^6.0 0 0 0 0 0 force
particle small_flame ^ ^ ^6.25 0 0 0 0 0 force
particle small_flame ^ ^ ^6.5 0 0 0 0 0 force
particle small_flame ^ ^ ^6.75 0 0 0 0 0 force
particle small_flame ^ ^ ^7.0 0 0 0 0 0 force
particle small_flame ^ ^ ^7.25 0 0 0 0 0 force
particle small_flame ^ ^ ^7.5 0 0 0 0 0 force
particle small_flame ^ ^ ^7.75 0 0 0 0 0 force
particle small_flame ^ ^ ^8.0 0 0 0 0 0 force
particle small_flame ^ ^ ^8.25 0 0 0 0 0 force
particle small_flame ^ ^ ^8.5 0 0 0 0 0 force
particle small_flame ^ ^ ^8.75 0 0 0 0 0 force
particle small_flame ^ ^ ^9.0 0 0 0 0 0 force
particle small_flame ^ ^ ^9.25 0 0 0 0 0 force
particle small_flame ^ ^ ^9.5 0 0 0 0 0 force
particle small_flame ^ ^ ^9.75 0 0 0 0 0 force
```

`@function demo:main/nested_execute_3`

```mcfunction
tp @s ~ ~ ~ ~ ~
execute at @s run function demo:main/nested_execute_2
kill @s
```

`@function demo:main/nested_execute_4`

```mcfunction
particle small_flame ^ ^ ^ 0 0 0 0 0 force
particle small_flame ^ ^ ^0.25 0 0 0 0 0 force
particle small_flame ^ ^ ^0.5 0 0 0 0 0 force
particle small_flame ^ ^ ^0.75 0 0 0 0 0 force
particle small_flame ^ ^ ^1.0 0 0 0 0 0 force
particle small_flame ^ ^ ^1.25 0 0 0 0 0 force
particle small_flame ^ ^ ^1.5 0 0 0 0 0 force
particle small_flame ^ ^ ^1.75 0 0 0 0 0 force
particle small_flame ^ ^ ^2.0 0 0 0 0 0 force
particle small_flame ^ ^ ^2.25 0 0 0 0 0 force
particle small_flame ^ ^ ^2.5 0 0 0 0 0 force
particle small_flame ^ ^ ^2.75 0 0 0 0 0 force
particle small_flame ^ ^ ^3.0 0 0 0 0 0 force
particle small_flame ^ ^ ^3.25 0 0 0 0 0 force
particle small_flame ^ ^ ^3.5 0 0 0 0 0 force
particle small_flame ^ ^ ^3.75 0 0 0 0 0 force
particle small_flame ^ ^ ^4.0 0 0 0 0 0 force
particle small_flame ^ ^ ^4.25 0 0 0 0 0 force
particle small_flame ^ ^ ^4.5 0 0 0 0 0 force
particle small_flame ^ ^ ^4.75 0 0 0 0 0 force
particle small_flame ^ ^ ^5.0 0 0 0 0 0 force
particle small_flame ^ ^ ^5.25 0 0 0 0 0 force
particle small_flame ^ ^ ^5.5 0 0 0 0 0 force
particle small_flame ^ ^ ^5.75 0 0 0 0 0 force
particle small_flame ^ ^ ^6.0 0 0 0 0 0 force
particle small_flame ^ ^ ^6.25 0 0 0 0 0 force
particle small_flame ^ ^ ^6.5 0 0 0 0 0 force
particle small_flame ^ ^ ^6.75 0 0 0 0 0 force
particle small_flame ^ ^ ^7.0 0 0 0 0 0 force
particle small_flame ^ ^ ^7.25 0 0 0 0 0 force
particle small_flame ^ ^ ^7.5 0 0 0 0 0 force
particle small_flame ^ ^ ^7.75 0 0 0 0 0 force
particle small_flame ^ ^ ^8.0 0 0 0 0 0 force
particle small_flame ^ ^ ^8.25 0 0 0 0 0 force
particle small_flame ^ ^ ^8.5 0 0 0 0 0 force
particle small_flame ^ ^ ^8.75 0 0 0 0 0 force
particle small_flame ^ ^ ^9.0 0 0 0 0 0 force
particle small_flame ^ ^ ^9.25 0 0 0 0 0 force
particle small_flame ^ ^ ^9.5 0 0 0 0 0 force
particle small_flame ^ ^ ^9.75 0 0 0 0 0 force
```

`@function demo:main/nested_execute_5`

```mcfunction
tp @s ~ ~ ~ ~ ~
execute at @s run tp @s ~ ~ ~ facing ^2 ^ ^10
execute at @s run function demo:main/nested_execute_4
kill @s
```

`@function demo:main/nested_execute_6`

```mcfunction
summon marker ~ ~ ~ {Tags: ["test"]}
execute as @e[tag=test] run function demo:main/nested_execute_1
summon marker ~ ~ ~ {Tags: ["test"]}
execute as @e[tag=test] run function demo:main/nested_execute_3
summon marker ~ ~ ~ {Tags: ["test"]}
execute as @e[tag=test] run function demo:main/nested_execute_5
```
