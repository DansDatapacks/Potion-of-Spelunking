# generate simple_dungeon loot

#raycast to chest
scoreboard players set #raycast_distance sourcecraft.temp 6
execute at @s run function #sourcecraft:raycast

#random chance
function #sourcecraft:generate_random_number

#place spelunker potion
execute if score #RNG sourcecraft.num matches 80..95 at @e[type=marker,tag=sourcecraft.raycast.ray,limit=1] run loot insert ~ ~ ~ loot spelunker.2:potion_of_spelunking

#place spelunker II potion
execute if score #RNG sourcecraft.num matches 96..100 at @e[type=marker,tag=sourcecraft.raycast.ray,limit=1] run loot insert ~ ~ ~ loot spelunker.2:potion_of_spelunking_two

#reset
advancement revoke @s only spelunker.2:generate_loot/simple_dungeon