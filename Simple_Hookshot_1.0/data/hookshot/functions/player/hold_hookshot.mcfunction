
# shoot
execute as @s[tag=!shs_reloading,scores={shs_shoot=1..}] run function hookshot:player/shoot

# reload
loot replace entity @s[nbt={SelectedItem: {id: "minecraft:crossbow", tag: {ItemName: hookshot, Charged: 0b}}},tag=!shs_reloading] weapon.mainhand loot hookshot:hookshot
loot replace entity @s[nbt={Inventory: [{Slot: -106b, id: "minecraft:crossbow", tag: {ItemName: hookshot, Charged: 0b}}]},tag=!shs_reloading] weapon.offhand loot hookshot:hookshot
