# runs if this core datapack is the newest version

#cancel command feedback
execute if score #sourcecraft load.status matches 1 run function #sourcecraft:cancel_command_feedback

#run if load status matches this core datapacks version
execute if score #sourcecraft load.status matches 1 run function sourcecraft.1:health/apply_health