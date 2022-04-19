# damage player

#set player's max health to current calculated health they should have
function sourcecraft.1:health/current/give_attributes

#play damage sound
execute at @s run playsound entity.player.hurt player @a ~ ~ ~ 1 1