# 
# Datapack made by SozoKa!
# Copyright (c) 2025 SozoKa. All rights reserved.
# 
# Permission is granted to use, copy, modify, and distribute
# this data pack and its documentation for any purpose.
# 
# A little credit is still apreciated :)
# 

# say tick_v63

execute as @a[tag=!on_horse] on vehicle if entity @s[tag=!rided_horse] if items entity @s saddle minecraft:saddle run function horsesstaystill:player_ride_horse
execute as @e[tag=rided_horse] unless predicate horsesstaystill:is_rided run function horsesstaystill:player_left_horse
execute as @a on vehicle if entity @s[tag=rided_horse] unless items entity @s saddle minecraft:saddle run function horsesstaystill:saddle_removed

# give 1s slowness to avoid horse still being slowed if datapack is uninstalled
effect give @e[tag=stay_still] slowness 1 50 true

#SAFE CODE
execute as @a[tag=on_horse] unless predicate horsesstaystill:on_horse_verify run tag @s remove on_horse