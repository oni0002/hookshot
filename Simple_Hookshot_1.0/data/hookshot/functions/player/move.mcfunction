
# move

# interruption
execute as @s[scores={shs_sneak=1..}] run function hookshot:player/move/move_end

# hook recovery sound
execute at @s run playsound block.chain.break player @a ~ ~ ~ 1.5 1.6

# hp hvy follows heavy mob
execute at @e[tag=shs_hp_hvy] if score @s player_id = @e[tag=shs_hp_hvy,sort=nearest,limit=1] shs_id as @e[tag=shs_hp_hvy,sort=nearest,limit=1] run function hookshot:utils/hp_hvy_move

# player
execute at @e[tag=shs_hp] if score @s player_id = @e[tag=shs_hp,sort=nearest,limit=1] shs_id as @e[tag=shs_hp,sort=nearest,limit=1] run function hookshot:player/move/move

# levitation to surpress vibration
execute at @s run summon area_effect_cloud ~ ~ ~ {Radius: 0f, Duration: 6, Age: 4, Effects: [{Id: 25b, Amplifier: 1b, Duration: 2, ShowParticles: 0b}]}