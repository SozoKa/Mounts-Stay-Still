# 
# Datapack made by SozoKa!
# Copyright (c) 2025 SozoKa. All rights reserved.
# 
# Permission is granted to use, copy, modify, and distribute
# this data pack and its documentation for any purpose.
# 
# A little credit is still apreciated :)
# 

execute as @a[predicate=mountsstaystill:debug] run tellraw @s "function player_ride_horse"

tag @s add rided_horse
tag @s remove stay_still

## To fix older versions if horse was already slowed
effect clear @s slowness

execute on passengers run tag @s add on_horse