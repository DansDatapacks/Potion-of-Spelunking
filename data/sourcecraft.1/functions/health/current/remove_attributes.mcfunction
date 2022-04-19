# remove temp current max health attributes from player

#remove all attributes
execute as @a[tag=sourcecraft.health.applied_health] run attribute @s minecraft:generic.max_health modifier remove dc-415-0-1-0
execute as @a[tag=sourcecraft.health.applied_health] run attribute @s minecraft:generic.max_health modifier remove dc-415-0-0-0
execute as @a[tag=sourcecraft.health.applied_health] run attribute @s minecraft:generic.max_health modifier remove dc-415-0-0-1
execute as @a[tag=sourcecraft.health.applied_health] run attribute @s minecraft:generic.max_health modifier remove dc-415-0-0-2
execute as @a[tag=sourcecraft.health.applied_health] run attribute @s minecraft:generic.max_health modifier remove dc-415-0-0-3
execute as @a[tag=sourcecraft.health.applied_health] run attribute @s minecraft:generic.max_health modifier remove dc-415-0-0-4
execute as @a[tag=sourcecraft.health.applied_health] run attribute @s minecraft:generic.max_health modifier remove dc-415-0-0-5
execute as @a[tag=sourcecraft.health.applied_health] run attribute @s minecraft:generic.max_health modifier remove dc-415-0-0-6
execute as @a[tag=sourcecraft.health.applied_health] run attribute @s minecraft:generic.max_health modifier remove dc-415-0-0-7
execute as @a[tag=sourcecraft.health.applied_health] run attribute @s minecraft:generic.max_health modifier remove dc-415-0-0-8
execute as @a[tag=sourcecraft.health.applied_health] run attribute @s minecraft:generic.max_health modifier remove dc-415-0-0-9
execute as @a[tag=sourcecraft.health.applied_health] run attribute @s minecraft:generic.max_health modifier remove dc-415-0-0-a

#remove temp tag from player
tag @a[tag=sourcecraft.health.applied_health] remove sourcecraft.health.applied_health