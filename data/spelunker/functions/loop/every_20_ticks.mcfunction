# runs every 20 ticks

#continue loop
schedule function spelunker:loop/every_20_ticks 20t replace

#handle potion time
execute as @a[tag=spelunker.spelunking] if score @s spelunker.time matches 0 run function spelunker:handle_effect/remove_spelunker_effect
execute as @a[tag=spelunker.spelunking] if score @s spelunker.time matches 1.. run scoreboard players remove @s spelunker.time 1