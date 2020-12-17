# executor: movepoint

# arrive
execute at @e[tag=shs_hp,distance=..1.5] if score @s player_id = @e[tag=shs_hp,sort=nearest,limit=1] shs_id run function hookshot:player/move/move_end

# collapse
execute anchored eyes unless block ^ ^ ^1 #hookshot:no_collision run function hookshot:player/move/move_end