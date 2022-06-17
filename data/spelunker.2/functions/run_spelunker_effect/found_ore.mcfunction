# if an ore block is found, either summon a new ore marker if none exists and validate it, or validate the existing one.

#IF no ore marker is here yet: summon an ore marker here
execute unless entity @e[distance=..0.5,type=minecraft:shulker,tag=spelunker.spelunked_ore] run function spelunker.2:run_spelunker_effect/summon_spelunked_ore_marker

#validate said ore marker so that it doesn't get deleted until the player moves away from it
tag @e[distance=..0.5,type=minecraft:shulker,tag=spelunker.spelunked_ore,limit=1,sort=nearest] add spelunker.spelunked_ore_valid