
# hold hookshot
execute as @a[nbt={SelectedItem: {id: "minecraft:crossbow", tag: {ItemName: hookshot}}}] at @s run function hookshot:player/hold_hookshot
execute as @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:crossbow", tag: {ItemName: hookshot}}]}] at @s run function hookshot:player/hold_hookshot

# moving
execute as @a[tag=shs_moving] run function hookshot:player/move

# pulling
execute as @a[tag=shs_pulling] run function hookshot:player/pull

# hook
execute as @e[tag=shs_hook] run function hookshot:hook/hook

# score reset
scoreboard players reset @a[scores={shs_shoot=1..}] shs_shoot
scoreboard players reset @a[scores={shs_sneak=1..}] shs_sneak

# craft
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items: [{Slot: 0b, id: "minecraft:iron_ingot", Count: 1b}, {Slot: 4b, id: "minecraft:chain", Count: 1b}, {Slot: 8b, id: "minecraft:crossbow", Count: 1b}]} run function hookshot:utils/craft