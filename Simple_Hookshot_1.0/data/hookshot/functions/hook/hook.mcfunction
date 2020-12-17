
# move velocity 3/tick
execute as @s[tag=!shs_hit_block,tag=!shs_hit_mob] run function hookshot:hook/move
execute as @s[tag=!shs_hit_block,tag=!shs_hit_mob] run function hookshot:hook/move
execute as @s[tag=!shs_hit_block,tag=!shs_hit_mob] run function hookshot:hook/move
execute as @s[tag=!shs_hit_block,tag=!shs_hit_mob] run function hookshot:hook/move
execute as @s[tag=!shs_hit_block,tag=!shs_hit_mob] run function hookshot:hook/move
execute as @s[tag=!shs_hit_block,tag=!shs_hit_mob] run function hookshot:hook/move

# hook eject sound
execute at @a if score @s shs_id = @p player_id run playsound block.chain.break player @a ~ ~ ~ 1.5 1

# hit block or mob
execute as @s[tag=shs_hit_block] at @s run function hookshot:hook/hit/block
execute as @s[tag=shs_hit_mob] at @s run function hookshot:hook/hit/mob

# hook life(remains 12 tick if do not hit)
scoreboard players add @s shs_hook_life 1
execute as @s[scores={shs_hook_life=12..}] at @a if score @s shs_id = @p player_id run tag @p remove shs_reloading
kill @s[scores={shs_hook_life=12..}]