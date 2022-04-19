#validate highlighted ores
execute as @e[type=minecraft:shulker,tag=spelunked_ore] run function spelunker:validate_spelunked_ore

#spelunker potion effect particles
execute at @a[tag=spelunker] run particle minecraft:entity_effect ~ ~.5 ~ 1 1 0 1 0 normal @a

#continue loop
schedule function spelunker:main 1t