# generate abandoned mineshaft loot

#raycast to chest
scoreboard players set #raycast_distance sourcecraft.temp 6
execute at @s run function #sourcecraft:raycast

#random chance
function #sourcecraft:generate_random_number

#place spelunker potion
execute if score #RNG sourcecraft.num matches 76..100 at @e[type=marker,tag=sourcecraft.raycast.ray,limit=1] run loot replace entity @e[type=minecraft:chest_minecart,limit=1,sort=nearest] container.0 loot spelunker.2:potion_of_spelunking

#reset
advancement revoke @s only spelunker.2:generate_loot/abandoned_mineshaft