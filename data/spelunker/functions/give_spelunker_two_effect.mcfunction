# give spelunker effect

#reset if already have effect
function spelunker:remove_spelunker_effect

#set timer
scoreboard players set @s spelunker.time 90

#give tag
tag @s add spelunker
tag @s add spelunker_two

#reset trigger
advancement revoke @s only spelunker:consume_potion_of_spelunking_two