# runs every tick

#continue loop
schedule function spelunker:loop/every_tick 1t replace

#check if ore marker has been mined
execute as @e[type=minecraft:shulker,tag=spelunker.spelunked_ore] at @s if block ~ ~ ~ #spelunker:air run function spelunker:run_spelunker_effect/delete_ore_marker

#spelunker potion effect particles
execute at @a[tag=spelunker.spelunking] run particle minecraft:entity_effect ~ ~.5 ~ 1 1 0 1 0 normal @a