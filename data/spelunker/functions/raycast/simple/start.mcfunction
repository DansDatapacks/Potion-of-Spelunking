# starts raycast

#reset past raycast
kill @e[type=minecraft:marker,tag=spelunker.raycast.ray]

#init raycast tag
tag @s add spelunker.raycast.raycasting

#set defaults
scoreboard players set #spelunker.raycast.hit spelunker.temp 0
execute unless score #spelunker.raycast.distance spelunker.temp matches 0.. run scoreboard players set #spelunker.raycast.distance spelunker.temp 7

#scale distance
scoreboard players operation #spelunker.raycast.distance spelunker.temp *= #10 spelunker.data

#run raycast
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function spelunker:raycast/simple/run

#reset tag
tag @s remove spelunker.raycast.raycasting

#reset scores
scoreboard players reset #spelunker.raycast.hit spelunker.temp
scoreboard players reset #spelunker.raycast.distance spelunker.temp
scoreboard players reset #spelunker.raycast.distance_traveled spelunker.temp