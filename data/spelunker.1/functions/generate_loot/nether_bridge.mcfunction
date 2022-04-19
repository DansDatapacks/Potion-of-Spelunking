# generate nether_bridge loot

#raycast to chest
scoreboard players set #raycast_distance sourcecraft.temp 6
execute at @s run function #sourcecraft:raycast

#random chance
function #sourcecraft:generate_random_number

#place spelunker potion
execute if score #RNG sourcecraft.num matches 91..100 at @e[type=marker,tag=sourcecraft.raycast.ray,limit=1] run loot insert ~ ~ ~ loot spelunker.1:potion_of_spelunking

#reset
advancement revoke @s only spelunker.1:generate_loot/nether_bridge