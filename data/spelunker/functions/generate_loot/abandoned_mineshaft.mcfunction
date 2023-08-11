# generate abandoned mineshaft loot

#raycast to chest
scoreboard players set #raycast_distance spelunker.temp 6
execute at @s run function spelunker:raycast/simple/start

#random chance
function #spelunker:rng/generate_random_number

#place spelunker potion
execute if score #RNG spelunker.temp matches 76..100 at @e[type=marker,tag=spelunker.raycast.ray,limit=1] run loot replace entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest] container.0 loot spelunker:potion_of_spelunking

#reset
advancement revoke @s only spelunker:generate_loot/abandoned_mineshaft