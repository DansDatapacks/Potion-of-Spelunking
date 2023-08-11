# run raycast

#if hit block
execute unless block ~ ~ ~ #spelunker:passable run scoreboard players set #spelunker.raycast.hit spelunker.temp 1

#if hit entity (non-player)
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!minecraft:player,dx=0,dy=0,dz=0,tag=!global.ignore,tag=!raycast.ignore] run scoreboard players set #spelunker.raycast.hit spelunker.temp 1

#mark that the ray has traveled one more time
scoreboard players add #spelunker.raycast.distance_traveled spelunker.temp 1

#debug
#tellraw @a {"score":{"name":"#spelunker.raycast.distance","objective":"spelunker.temp"}}
#tellraw @a {"score":{"name":"#spelunker.raycast.hit","objective":"spelunker.temp"}}
#tellraw @a {"score":{"name":"#spelunker.raycast.distance_traveled","objective":"spelunker.temp"}}

#if hit found: end
execute if score #spelunker.raycast.hit spelunker.temp matches 1 run function spelunker:raycast/simple/end

#else: continue
execute if score #spelunker.raycast.hit spelunker.temp matches 0 unless score #spelunker.raycast.distance_traveled spelunker.temp = #spelunker.raycast.distance spelunker.temp positioned ^ ^ ^0.1 run function spelunker:raycast/simple/run