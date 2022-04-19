#handle potion time
execute as @a[tag=spelunker] if score @s spelunker.time matches 0 run function spelunker:remove_spelunker_effect
execute as @a[tag=spelunker] if score @s spelunker.time matches 1.. run scoreboard players remove @s spelunker.time 1

#continue loop
schedule function spelunker:every_20_ticks 20t