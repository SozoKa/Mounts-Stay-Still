# 
# Datapack made by SozoKa!
# Copyright (c) 2025 SozoKa. All rights reserved.
# 
# Permission is granted to use, copy, modify, and distribute
# this data pack and its documentation for any purpose.
# 
# A little credit is still apreciated :)
# 

execute as @a[predicate=mountsstaystill:debug] run tellraw @s "function saddle_removed"

tag @s remove rided_horse
execute on passengers run tag @s remove on_horse