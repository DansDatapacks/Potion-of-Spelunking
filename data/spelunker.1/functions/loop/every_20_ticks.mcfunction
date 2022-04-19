# runs every 20 ticks

#handle potion time
execute as @a[tag=spelunker.spelunking] if score @s spelunker.time matches 0 run function spelunker.1:handle_effect/remove_spelunker_effect
execute as @a[tag=spelunker.spelunking] if score @s spelunker.time matches 1.. run scoreboard players remove @s spelunker.time 1

#continue loop
schedule function spelunker.1:loop/every_20_ticks 20t