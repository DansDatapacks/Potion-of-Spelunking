# generate random number (take spelunker.temp and spelunker.temp from executor and set executor's spelunker.temp to a random number between them)

#if min not set, set to 1
execute unless score #RNG:min spelunker.temp matches 1.. run scoreboard players set #RNG:min spelunker.temp 1
#if max not set, set to 100
execute unless score #RNG:max spelunker.temp matches 1.. run scoreboard players set #RNG:max spelunker.temp 100

#Change (lower, upper) to (lower, range)
scoreboard players operation #RNG:max spelunker.temp -= #RNG:min spelunker.temp
scoreboard players add #RNG:max spelunker.temp 1

#Summon two entities to work with
summon minecraft:marker ~ ~ ~ {Tags:["spelunker.random","global.ignore"]}
summon minecraft:marker ~ ~ ~ {Tags:["spelunker.random","global.ignore"]}

#Generate a 31-bit random number by randomizing each bit
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 1
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 2
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 4
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 8
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 16
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 32
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 64
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 128
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 256
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 512
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 1024
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 2048
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 4096
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 8192
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 16384
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 32768
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 65536
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 131072
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 262144
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 524288
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 1048576
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 2097152
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 4194304
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 8388608
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 16777216
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 33554432
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 67108864
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 134217728
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 268435456
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 536870912
scoreboard players add @e[type=minecraft:marker,tag=spelunker.random,sort=random,limit=1,distance=..3] spelunker.temp 1073741824

#Transfer random number and limit to given range
scoreboard players operation #RNG spelunker.temp = @e[type=minecraft:marker,tag=spelunker.random,distance=..3,limit=1] spelunker.temp
scoreboard players operation #RNG spelunker.temp %= #RNG:max spelunker.temp
scoreboard players operation #RNG spelunker.temp += #RNG:min spelunker.temp

#Restore input2
scoreboard players operation #RNG:max spelunker.temp += #RNG:min spelunker.temp
scoreboard players remove #RNG:max spelunker.temp 1

#kill calc AEC
kill @e[type=minecraft:marker,tag=spelunker.random,distance=..3]

#reset min/max
scoreboard players reset #RNG:min spelunker.temp
scoreboard players reset #RNG:max spelunker.temp