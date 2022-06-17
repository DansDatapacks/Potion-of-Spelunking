# teleport executor down until it hits a block

#tp down
execute at @s if block ~ ~-.1 ~ #sourcecraft.6:passable run tp ~ ~-.1 ~

#loop
execute at @s if block ~ ~-.1 ~ #sourcecraft.6:passable run function sourcecraft.6:find/find_block_below