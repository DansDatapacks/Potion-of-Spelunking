# load

#main variables
scoreboard objectives add spelunker.time dummy
scoreboard objectives add spelunker.row dummy
scoreboard objectives add spelunker.layer dummy

#diamond ore
team add diamond_ore "diamond ore"
team modify diamond_ore color aqua

#lapis ore
team add lapis_ore "lapis ore"
team modify lapis_ore color blue

#gold ore
team add gold_ore "gold ore"
team modify gold_ore color yellow

#iron ore
team add iron_ore "iron ore"
team modify iron_ore color gray

#coal ore
team add coal_ore "coal ore"
team modify coal_ore color black

#emerald ore
team add emerald_ore "emerald ore"
team modify emerald_ore color green

#redstone ore
team add redstone_ore "redstone ore"
team modify redstone_ore color red

#nether quartz ore
team add quartz_ore "nether quartz ore"
team modify quartz_ore color white

#ancient debris
team add ancient_debris "ancient debris"
team modify ancient_debris color dark_red

#init loops
schedule function spelunker:main 1t
schedule function spelunker:every_5_ticks 1t
schedule function spelunker:every_20_ticks 1t