# runs scan to search for ore that can be highlighted

#IF ore block detected at this spot in the row: summon an ore marker here/validate existing one
execute at @s unless block ~ ~ ~ #spelunker.2:air if block ~ ~ ~ #spelunker.2:ore align xyz positioned ~.5 ~ ~.5 run function spelunker.2:run_spelunker_effect/found_ore

#increment row spot score
scoreboard players add @s spelunker.row 1

#IF not at the end of the row yet: move 1 block forward in the row
execute unless score @s spelunker.row matches 9.. at @s run tp ~1 ~ ~

#AND: run the scan again (until at the end of the row)
execute unless score @s spelunker.row matches 9.. at @s run function spelunker.2:run_spelunker_effect/run_spelunk_scan

#IF ran through all rows: increment layer spot score
execute if score @s spelunker.row matches 9.. run scoreboard players add @s spelunker.layer 1

#AND: teleport it back to the beginning of the row, and up one layer
execute if score @s spelunker.row matches 9.. at @s run tp ~-8 ~1 ~

#IF ran through all rows AND all layers: kill itself
execute if score @s spelunker.row matches 9.. if score @s spelunker.layer matches 5.. run kill @s

#ELSE IF ran through all rows: reset row score to start from 0 again
execute if score @s spelunker.row matches 9.. run scoreboard players set @s spelunker.row 0

#IF not done with all layers yet: re-run this function to check for ore in the new spot starting from the new layer
execute unless score @s spelunker.layer matches 5.. at @s run function spelunker.2:run_spelunker_effect/run_spelunk_scan