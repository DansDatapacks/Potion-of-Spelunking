# reset ore

#if block broken, delete
execute at @s if block ~ ~ ~ #spelunker:air run tag @s add spelunker_delete

#if no spelunking player near, delete
execute unless entity @s[tag=spelunked_ore_valid] run tag @s add spelunker_delete

#delete
execute if entity @s[tag=spelunker_delete] at @s run tp ~ ~-1000 ~
execute if entity @s[tag=spelunker_delete] at @s run kill @s