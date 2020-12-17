# remove tag from player 
execute if score @s shs_id = @p player_id run tag @p remove shs_pulling
execute if score @s shs_id = @p player_id run tag @p remove shs_reloading

# remove tag and reset score from mob
tag @s remove shs_pulled
scoreboard players reset @s shs_id