# triggers when player drinks spelunker potion

#IF they dont have the spelunker II effect currently running: give them spelunker effect
execute as @s unless entity @s[tag=spelunker.spelunking_two] run function spelunker.2:handle_effect/give_spelunker_effect

#reset trigger
execute as @s run advancement revoke @s only spelunker.2:consume_potion_of_spelunking