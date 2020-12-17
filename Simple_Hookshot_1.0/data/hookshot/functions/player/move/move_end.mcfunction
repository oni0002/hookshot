
# small jump
tp @s @s
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration: 6, Age: 4, Effects: [{Id: 25b, Amplifier: 20b, Duration: 4, ShowParticles: 0b}]}

# kill hookpoint
execute at @e[tag=shs_hp] if score @s player_id = @e[tag=shs_hp,sort=nearest,limit=1] shs_id run kill @e[tag=shs_hp,sort=nearest,limit=1]

# kill movepoint
execute at @e[tag=shs_mp] if score @s player_id = @e[tag=shs_mp,sort=nearest,limit=1] shs_id run kill @e[tag=shs_mp,sort=nearest,limit=1]

# remove tags
tag @s remove shs_moving
tag @s remove shs_reloading
