# executor: hook

# tag, id
tag @e[type=#hookshot:light,sort=nearest,limit=1] add shs_pulled
scoreboard players operation @e[tag=shs_pulled,sort=nearest,limit=1] shs_id = @s shs_id

# pulling player
execute at @a if score @s shs_id = @p player_id run tag @p add shs_pulling

# kill hook
kill @s