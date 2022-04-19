# give spelunker effect

#reset if already have effect
execute unless entity @s[tag=spelunker_two] run function spelunker:remove_spelunker_effect

#set timer
execute unless entity @s[tag=spelunker_two] run scoreboard players set @s spelunker.time 180

#give tag
execute unless entity @s[tag=spelunker_two] run tag @s add spelunker
execute unless entity @s[tag=spelunker_two] run tag @s add spelunker_one

#reset trigger
advancement revoke @s only spelunker:consume_potion_of_spelunking