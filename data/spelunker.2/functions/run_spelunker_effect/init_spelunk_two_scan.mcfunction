# run xray

#begin scan by spawning scan Markers
execute positioned ~-8 ~-6 ~-8 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-8 ~-6 ~-7 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-8 ~-6 ~-6 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-8 ~-6 ~-5 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-8 ~-6 ~-4 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-8 ~-6 ~-3 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-8 ~-6 ~-2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-8 ~-6 ~-1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-8 ~-6 ~ align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-8 ~-6 ~1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-8 ~-6 ~2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-8 ~-6 ~3 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-8 ~-6 ~4 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-8 ~-6 ~5 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-8 ~-6 ~6 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-8 ~-6 ~7 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}
execute positioned ~-8 ~-6 ~8 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["spelunker.scanMarker","spelunker.scanMarker_init","global.ignore"]}

#run scan
execute as @e[type=minecraft:marker,tag=spelunker.scanMarker_init] at @s run function spelunker.2:run_spelunker_effect/run_spelunk_two_scan

#remove init tag
tag @e[type=minecraft:marker,tag=spelunker.scanMarker_init] remove spelunker.scanMarker_init