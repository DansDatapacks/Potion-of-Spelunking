# generate ancient_city loot

#raycast to chest
scoreboard players set #raycast_distance spelunker.temp 6
execute at @s run function spelunker:raycast/simple/start

#random chance
function #spelunker:rng/generate_random_number

#place spelunker potion
execute if score #RNG spelunker.temp matches 86..95 at @e[type=marker,tag=spelunker.raycast.ray,limit=1] run loot insert ~ ~ ~ loot spelunker:potion_of_spelunking
execute if score #RNG spelunker.temp matches 96..100 at @e[type=marker,tag=spelunker.raycast.ray,limit=1] run loot insert ~ ~ ~ loot spelunker:potion_of_spelunking_two

#reset
advancement revoke @s only spelunker:generate_loot/ancient_city