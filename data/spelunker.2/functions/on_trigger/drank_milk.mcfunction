# triggers when player runs milk

#clear spelunker effect
execute as @s run function spelunker.2:handle_effect/remove_spelunker_effect

#reset trigger
execute as @s run advancement revoke @s only spelunker.2:consume_milk