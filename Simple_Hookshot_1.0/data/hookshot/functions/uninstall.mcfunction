# clear scoreboard
scoreboard objectives remove shs_hook_life
scoreboard objectives remove shs_id
scoreboard objectives remove shs_shoot
scoreboard objectives remove shs_sneak

tag @a[tag=shs_moving] remove shs_moving
tag @a[tag=shs_pulling] remove shs_pulling
tag @a[tag=shs_reloading] remove shs_reloading
tag @e[tag=shs_pulled] remove shs_pulled
kill @e[tag=shs_hook]
kill @e[tag=shs_hp]
kill @e[tag=shs_hp_hvy]

tellraw @a {"text":"Success uninstall simple hookshot"}
datapack disable "file/Simple_Hookshot_1.0"