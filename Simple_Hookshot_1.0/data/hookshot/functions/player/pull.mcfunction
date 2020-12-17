# executor: pulling

# interruption
execute at @e[tag=shs_pulled] if score @s[scores={shs_sneak=1..}] player_id = @e[tag=shs_pulled,sort=nearest,limit=1] shs_id as @e[tag=shs_pulled,sort=nearest,limit=1] run function hookshot:pulled/pull_end

# hook recovery sound
execute at @s run playsound block.chain.break player @a ~ ~ ~ 1.5 1.6

# if pulling target dies, stop pulling
execute unless entity @e[tag=shs_pulled] run function hookshot:utils/reset_player_tag

# pulling
execute at @e[tag=shs_pulled] if score @s player_id = @e[tag=shs_pulled,sort=nearest,limit=1] shs_id as @e[tag=shs_pulled,sort=nearest,limit=1] run function hookshot:pulled/move
