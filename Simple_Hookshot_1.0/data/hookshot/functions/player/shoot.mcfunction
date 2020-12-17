# hook spawn
execute run function hookshot:hook/spawn

# sound
#playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1.5 2
playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 1.5 1

# backjump if in the air
execute if block ~ ~-1 ~ minecraft:air run function hookshot:player/small_jump
execute if block ~ ~-1 ~ minecraft:cave_air run function hookshot:player/small_jump

#
tag @s add shs_reloading