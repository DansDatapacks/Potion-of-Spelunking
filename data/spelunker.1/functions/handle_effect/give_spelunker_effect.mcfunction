# give spelunker effect

#reset effect
function spelunker.1:handle_effect/remove_spelunker_effect

#set timer
scoreboard players set @s spelunker.time 180

#give tag
tag @s add spelunker.spelunking
tag @s add spelunker.spelunking_one