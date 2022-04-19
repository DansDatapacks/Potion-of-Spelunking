# detects ore block

#set block highlight
execute align xyz positioned ~.5 ~ ~.5 run summon minecraft:shulker ~ ~ ~ {Tags:["spelunked_ore","spelunked_ore_init","global.ignore"],ActiveEffects:[{Id:14b,ShowParticles:false,Amplifier:1b,Duration:2147483647}],Glowing:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,NoAI:1b,DeathTime:19s,DeathLootTable:"/"}

#diamond ore
execute if block ~ ~ ~ minecraft:diamond_ore run team join diamond_ore @e[type=minecraft:shulker,tag=spelunked_ore_init]

#gold ore
execute if block ~ ~ ~ minecraft:gold_ore run team join gold_ore @e[type=minecraft:shulker,tag=spelunked_ore_init]
execute if block ~ ~ ~ minecraft:nether_gold_ore run team join gold_ore @e[type=minecraft:shulker,tag=spelunked_ore_init]
execute if block ~ ~ ~ minecraft:gilded_blackstone run team join gold_ore @e[type=minecraft:shulker,tag=spelunked_ore_init]

#emerald ore
execute if block ~ ~ ~ minecraft:emerald_ore run team join emerald_ore @e[type=minecraft:shulker,tag=spelunked_ore_init]

#lapis lazuli ore
execute if block ~ ~ ~ minecraft:lapis_ore run team join lapis_ore @e[type=minecraft:shulker,tag=spelunked_ore_init]

#iron ore
execute if block ~ ~ ~ minecraft:iron_ore run team join iron_ore @e[type=minecraft:shulker,tag=spelunked_ore_init]

#coal ore
execute if block ~ ~ ~ minecraft:coal_ore run team join coal_ore @e[type=minecraft:shulker,tag=spelunked_ore_init]

#redstone ore
execute if block ~ ~ ~ minecraft:redstone_ore run team join redstone_ore @e[type=minecraft:shulker,tag=spelunked_ore_init]

#nether quartz
execute if block ~ ~ ~ minecraft:nether_quartz_ore run team join quartz_ore @e[type=minecraft:shulker,tag=spelunked_ore_init]

#ancient debris
execute if block ~ ~ ~ minecraft:ancient_debris run team join ancient_debris @e[type=minecraft:shulker,tag=spelunked_ore_init]

#remove init tag
tag @e[type=minecraft:shulker,tag=spelunked_ore_init] remove spelunked_ore_init