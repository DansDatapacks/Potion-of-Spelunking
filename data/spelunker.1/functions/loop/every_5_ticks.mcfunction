# runs every 5 ticks

#reset spelunked ore marker validation
tag @e[type=minecraft:shulker,tag=spelunker.spelunked_ore,tag=spelunker.spelunked_ore_valid] remove spelunker.spelunked_ore_valid

#execute ore scan around players with spelunker effect
execute as @a[tag=spelunker.spelunking_one] at @s run function spelunker.1:run_spelunker_effect/init_spelunk_scan
execute as @a[tag=spelunker.spelunking_two] at @s run function spelunker.1:run_spelunker_effect/init_spelunk_two_scan

#delete non-validated ore markers
execute as @e[type=minecraft:shulker,tag=spelunker.spelunked_ore,tag=!spelunker.spelunked_ore_valid] run function spelunker.1:run_spelunker_effect/delete_ore_marker

#continue loop
schedule function spelunker.1:loop/every_5_ticks 5t