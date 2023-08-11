# run xray

#begin scan by spawning scan Markers
execute positioned ~-4 ~-3 ~-4 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-4 ~-3 ~-3 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-4 ~-3 ~-2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-4 ~-3 ~-1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-4 ~-3 ~ align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-4 ~-3 ~1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-4 ~-3 ~2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-4 ~-3 ~3 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-4 ~-3 ~4 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}

#run scan
execute as @e[type=minecraft:marker,tag=spelunker.scanMarker_init] at @s run function spelunker:run_spelunker_effect/run_spelunk_scan

#remove init tag
tag @e[type=minecraft:marker,tag=spelunker.scanMarker_init] remove spelunker.scanMarker_init