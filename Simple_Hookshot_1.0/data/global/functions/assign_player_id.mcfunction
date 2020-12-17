# assign id to the player who doesnt have id
tag @a[tag=!has_id,limit=1] add id_target
execute if entity @a[tag=id_target] run scoreboard players add #Player_CoreID player_id_core 1
scoreboard players operation @a[tag=id_target] player_id = #Player_CoreID player_id_core
tag @a[tag=id_target,scores={player_id=0..}] add has_id
tag @a[tag=has_id,tag=id_target] remove id_target