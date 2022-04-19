# runs scan to search for ore that can be highlighted

#if ore block detected
execute at @s unless block ~ ~ ~ #spelunker:air if block ~ ~ ~ #spelunker:ore align xyz positioned ~.5 ~ ~.5 unless entity @e[distance=..0.5,type=minecraft:shulker,tag=spelunked_ore] run function spelunker:summon_spelunked_ore_highlight

#validate found highlighted ores
execute at @s unless block ~ ~ ~ #spelunker:air if block ~ ~ ~ #spelunker:ore align xyz positioned ~.5 ~ ~.5 if entity @e[distance=..0.5,type=minecraft:shulker,tag=spelunked_ore] run tag @e[type=minecraft:shulker,tag=spelunked_ore] add spelunked_ore_valid

#next block
scoreboard players add @s spelunker.row 1

#tp
execute unless score @s spelunker.row matches 7.. at @s run tp ~1 ~ ~
#recursive
execute unless score @s spelunker.row matches 7.. at @s run function spelunker:type/scan/run_scan

#next layer
execute if score @s spelunker.row matches 7.. run scoreboard players add @s spelunker.layer 1
execute if score @s spelunker.row matches 7.. at @s run tp ~-6 ~1 ~

#kill at end of all 7 layers
execute if score @s spelunker.row matches 7.. if score @s spelunker.layer matches 7.. run kill @s

#go back to first row
execute if score @s spelunker.row matches 7.. run scoreboard players set @s spelunker.row 0

#re-run
execute unless score @s spelunker.layer matches 7.. at @s run function spelunker:type/scan/run_scan