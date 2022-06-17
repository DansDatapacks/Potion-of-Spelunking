# run raycast

#if hit block
execute unless block ~ ~ ~ #sourcecraft.6:passable run scoreboard players set #sourcecraft.raycast.hit sourcecraft.temp 1

#if hit entity (non-player)
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!minecraft:player,dx=0,dy=0,dz=0,tag=!global.ignore,tag=!raycast.ignore] run scoreboard players set #sourcecraft.raycast.hit sourcecraft.temp 1

#mark that the ray has traveled one more time
scoreboard players add #sourcecraft.raycast.distance_traveled sourcecraft.temp 1

#debug
#tellraw @a {"score":{"name":"#sourcecraft.raycast.distance","objective":"sourcecraft.temp"}}
#tellraw @a {"score":{"name":"#sourcecraft.raycast.hit","objective":"sourcecraft.temp"}}
#tellraw @a {"score":{"name":"#sourcecraft.raycast.distance_traveled","objective":"sourcecraft.temp"}}

#if hit found: end
execute if score #sourcecraft.raycast.hit sourcecraft.temp matches 1 run function sourcecraft.6:raycast/simple/end

#else: continue
execute if score #sourcecraft.raycast.hit sourcecraft.temp matches 0 unless score #sourcecraft.raycast.distance_traveled sourcecraft.temp = #sourcecraft.raycast.distance sourcecraft.temp positioned ^ ^ ^0.1 run function sourcecraft.6:raycast/simple/run