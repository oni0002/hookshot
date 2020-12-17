# hit effect
particle minecraft:crit ~ ~ ~ 0 0 0 1 10 force
playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1.5 2

# hookpoint spawn
summon area_effect_cloud ~ ~ ~ {Duration: 200, Radius: 0f, Tags: [shs_hp, shs_hp_spawn]}
# id
scoreboard players operation @e[tag=shs_hp_spawn,sort=nearest,limit=1] shs_id = @s shs_id
tag @e[tag=shs_hp_spawn,scores={shs_id=1..}] remove shs_hp_spawn

# tag player "moving"
execute at @a if score @s shs_id = @p player_id run tag @p add shs_moving

# kill hook
kill @s