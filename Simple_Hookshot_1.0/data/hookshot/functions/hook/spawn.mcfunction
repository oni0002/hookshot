# hook spawn
execute anchored eyes run summon area_effect_cloud ^ ^ ^0.5 {Duration: 200, Tags: [shs_hook, shs_hook_spawn]}

# id 
scoreboard players operation @e[tag=shs_hook_spawn,sort=nearest,limit=1] shs_id = @s player_id
# hook's direction
data modify entity @e[tag=shs_hook_spawn,sort=nearest,limit=1] Rotation set from entity @s Rotation

tag @e[tag=shs_hook_spawn,scores={shs_id=1..}] remove shs_hook_spawn