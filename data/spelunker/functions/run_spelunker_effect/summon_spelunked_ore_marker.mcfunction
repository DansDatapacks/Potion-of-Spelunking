# detects ore block

#set block highlight
execute align xyz positioned ~.5 ~ ~.5 run summon minecraft:shulker ~ ~ ~ {Tags:["spelunker.spelunked_ore","spelunker.spelunked_ore_init","global.ignore"],ActiveEffects:[{Id:14b,ShowParticles:false,Amplifier:1b,Duration:2147483647}],Glowing:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,NoAI:1b,DeathTime:19s,DeathLootTable:"/"}

##vanilla ore

#diamond ore
execute if block ~ ~ ~ minecraft:diamond_ore run team join spelunker.diamond_ore @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]
execute if block ~ ~ ~ minecraft:deepslate_diamond_ore run team join spelunker.diamond_ore @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]

#gold ore
execute if block ~ ~ ~ minecraft:gold_ore run team join spelunker.gold_ore @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]
execute if block ~ ~ ~ minecraft:nether_gold_ore run team join spelunker.gold_ore @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]
execute if block ~ ~ ~ minecraft:deepslate_gold_ore run team join spelunker.gold_ore @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]

#emerald ore
execute if block ~ ~ ~ minecraft:emerald_ore run team join spelunker.emerald_ore @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]
execute if block ~ ~ ~ minecraft:deepslate_emerald_ore run team join spelunker.emerald_ore @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]

#lapis lazuli ore
execute if block ~ ~ ~ minecraft:lapis_ore run team join spelunker.lapis_ore @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]
execute if block ~ ~ ~ minecraft:deepslate_lapis_ore run team join spelunker.lapis_ore @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]

#iron ore
execute if block ~ ~ ~ minecraft:iron_ore run team join spelunker.iron_ore @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]
execute if block ~ ~ ~ minecraft:deepslate_iron_ore run team join spelunker.iron_ore @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]

#copper ore
execute if block ~ ~ ~ minecraft:copper_ore run team join spelunker.copper_ore @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]
execute if block ~ ~ ~ minecraft:deepslate_copper_ore run team join spelunker.copper_ore @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]

#coal ore
execute if block ~ ~ ~ minecraft:coal_ore run team join spelunker.coal_ore @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]
execute if block ~ ~ ~ minecraft:deepslate_coal_ore run team join spelunker.coal_ore @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]

#redstone ore
execute if block ~ ~ ~ minecraft:redstone_ore run team join spelunker.redstone_ore @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]
execute if block ~ ~ ~ minecraft:deepslate_redstone_ore run team join spelunker.redstone_ore @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]

#nether quartz
execute if block ~ ~ ~ minecraft:nether_quartz_ore run team join spelunker.quartz_ore @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]

#ancient debris
execute if block ~ ~ ~ minecraft:ancient_debris run team join spelunker.ancient_debris @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest]

##custom ore

#heart crystal ore


#remove init tag
tag @e[type=minecraft:shulker,tag=spelunker.spelunked_ore_init,limit=1,sort=nearest] remove spelunker.spelunked_ore_init