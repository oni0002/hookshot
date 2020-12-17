# executor: hook

# hit effect
execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 5 force
execute at @s run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1.5 2

# heavy mob
execute at @s if entity @e[type=#hookshot:heavy,distance=..2] run function hookshot:hook/hit/mob_heavy
# light mob
execute at @s if entity @e[type=#hookshot:light,distance=..2] run function hookshot:hook/hit/mob_light
