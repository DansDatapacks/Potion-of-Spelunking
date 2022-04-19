#reset spelunked ores
tag @e[type=minecraft:shulker,tag=spelunked_ore,tag=spelunked_ore_valid] remove spelunked_ore_valid

#execute xray if there are spelunkers
execute as @a[tag=spelunker_one] at @s run function spelunker:type/run_spelunk
execute as @a[tag=spelunker_two] at @s run function spelunker:type/run_spelunk_two

#continue loop
schedule function spelunker:every_5_ticks 5t