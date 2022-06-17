# update healthbar on players

##module
#tell other packs that the player's max health has changed
execute as @a[tag=sourcecraft.health.max_health_updated] run function #sourcecraft:modules/player_max_health_updated

#reset tag
tag @a remove sourcecraft.health.max_health_updated