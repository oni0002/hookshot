# executor: hook

# tp forward
execute at @s run teleport @s ^ ^ ^0.5
# particle
execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force
execute at @s run particle minecraft:dust 0.3 0.3 0.3 1 ~ ~ ~ 0 0 0 0 1 force
#execute at @s run particle minecraft:instant_effect ~ ~ ~ 0 0 0 0 1 force

# Executing function here causes multi hit detection. This is the why sometime moving speed is x2or3.
#execute at @s unless block ~ ~ ~ #hookshot:no_collision run function hookshot:hook/hit/block
#execute at @s if entity @e[type=#hookshot:targets,distance=..2] run function hookshot:hook/hit/mob

# hit block or mob
execute at @s[tag=!shs_hit_mob] unless block ~ ~ ~ #hookshot:no_collision run tag @s add shs_hit_block
execute at @s[tag=!shs_hit_block] if entity @e[type=#hookshot:targets,distance=..2] run tag @s add shs_hit_mob
