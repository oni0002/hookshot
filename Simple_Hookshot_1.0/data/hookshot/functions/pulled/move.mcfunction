# executor: mob

# move forward
execute at @a[tag=shs_pulling] if score @s shs_id = @p player_id at @s facing entity @p eyes run tp @s ^ ^ ^1

# arrive
execute at @a[tag=shs_pulling,distance=..2] if score @s shs_id = @p player_id run function hookshot:pulled/pull_end

# collapse
execute at @a[tag=shs_pulling] if score @s shs_id = @p player_id at @s facing entity @p eyes anchored eyes unless block ^ ^ ^1 #hookshot:no_collision run function hookshot:pulled/pull_end