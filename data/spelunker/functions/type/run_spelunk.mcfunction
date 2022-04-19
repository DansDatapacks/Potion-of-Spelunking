# run xray

#begin scan by spawning scan AECs
execute positioned ~-3 ~-3 ~-3 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spelunker.scanAEC","spelunker.scanAEC_init","global.ignore"]}
execute positioned ~-3 ~-3 ~-2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spelunker.scanAEC","spelunker.scanAEC_init","global.ignore"]}
execute positioned ~-3 ~-3 ~-1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spelunker.scanAEC","spelunker.scanAEC_init","global.ignore"]}
execute positioned ~-3 ~-3 ~ align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spelunker.scanAEC","spelunker.scanAEC_init","global.ignore"]}
execute positioned ~-3 ~-3 ~1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spelunker.scanAEC","spelunker.scanAEC_init","global.ignore"]}
execute positioned ~-3 ~-3 ~2 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spelunker.scanAEC","spelunker.scanAEC_init","global.ignore"]}
execute positioned ~-3 ~-3 ~3 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spelunker.scanAEC","spelunker.scanAEC_init","global.ignore"]}

#run scan
execute as @e[type=minecraft:area_effect_cloud,tag=spelunker.scanAEC_init] run function spelunker:type/scan/run_scan

#remove init tag
tag @e[type=minecraft:area_effect_cloud,tag=spelunker.scanAEC_init] remove spelunker.scanAEC_init