# executor: moving player

# move forward to hookpoint
execute at @a if score @s shs_id = @p player_id facing entity @s feet run tp @p ^ ^ ^1

# detect arrive/break
execute at @a if score @s shs_id = @p player_id as @p run function hookshot:player/move/arv_or_brk