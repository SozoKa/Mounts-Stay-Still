# 
# Datapack made by SozoKa!
# Copyright (c) 2023 SozoKa. All rights reserved.
# 
# Permission is granted to use, copy, modify, and distribute
# this data pack and its documentation for any purpose.
# 
# A little credit is still apreciated :)
# 

execute as @a[predicate=mountsstaystill:debug] run tellraw @s "function player_left_horse"

tag @s remove rided_horse
tag @s add stay_still

execute unless items entity @s horse.saddle saddle on passengers run tag @s remove on_horse

execute at @s as @a[distance=..6,tag=on_horse] unless predicate mountsstaystill:on_horse_verify run tag @s remove on_horse