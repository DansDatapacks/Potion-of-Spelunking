# load

# variables
scoreboard objectives add spelunker.temp dummy
scoreboard objectives add spelunker.time dummy
scoreboard objectives add spelunker.row dummy
scoreboard objectives add spelunker.layer dummy

# constants
scoreboard players set #10 spelunker.temp 10

##vanilla ores
#diamond ore
team add spelunker.diamond_ore "diamond ore"
team modify spelunker.diamond_ore color aqua
#lapis ore
team add spelunker.lapis_ore "lapis ore"
team modify spelunker.lapis_ore color blue
#gold ore
team add spelunker.gold_ore "gold ore"
team modify spelunker.gold_ore color yellow
#iron ore
team add spelunker.iron_ore "iron ore"
team modify spelunker.iron_ore color gray
#copper ore
team add spelunker.copper_ore "copper ore"
team modify spelunker.copper_ore color dark_green
#coal ore
team add spelunker.coal_ore "coal ore"
team modify spelunker.coal_ore color black
#emerald ore
team add spelunker.emerald_ore "emerald ore"
team modify spelunker.emerald_ore color green
#redstone ore
team add spelunker.redstone_ore "redstone ore"
team modify spelunker.redstone_ore color red
#nether quartz ore
team add spelunker.quartz_ore "nether quartz ore"
team modify spelunker.quartz_ore color white
#ancient debris
team add spelunker.ancient_debris "ancient debris"
team modify spelunker.ancient_debris color dark_red

# ##custom ores
# #heart crystal ore
# team add spelunker.heart_crystal_ore "heart crystal ore"
# team modify spelunker.heart_crystal_ore color light_purple

# end previous loops
schedule clear spelunker:loop/every_tick
schedule clear spelunker:loop/every_5_ticks
schedule clear spelunker:loop/every_20_ticks

# start new loops
function spelunker:loop/every_tick
function spelunker:loop/every_5_ticks
function spelunker:loop/every_20_ticks