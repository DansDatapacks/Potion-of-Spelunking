# triggers when player drinks spelunker II potion

#give spelunker II effect
execute as @s run function spelunker.2:handle_effect/give_spelunker_two_effect

#reset trigger
execute as @s run advancement revoke @s only spelunker.2:consume_potion_of_spelunking_two