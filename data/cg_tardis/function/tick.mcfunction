#execute as @e[tag=cg_tardis.tardis.exterior.anchor] if score @s cg_tardis.doorOpen matches 1.. at @s positioned ^ ^ ^0.6 if entity @p[distance=0..1] run function cg_tardis:tardis/enter


#execute as @e[tag=cg_tardis.tardis.exterior.interaction] if data entity @s interaction at @s run function cg_tardis:tardis/door_interaction
function cg_tardis:tardis/loop

# Config File
execute if score configLoaded cg_tardis.config matches 0 run function cg_tardis:config




#execute as @e[tag=cg_tardis.tardis.exterior.interaction] at @s on attacker if entity @s[gamemode=creative] run function cg_tardis:tardis/destroy


execute at @e[tag=cg_tardis.exterior.setup] run particle angry_villager ~ ~2 ~

execute as @a run function cg_tardis:debug/hoe


execute as @e[tag=cg_tardis.interior.spinner.neg] at @s run rotate @s ~-1 ~
execute as @e[tag=cg_tardis.interior.spinner.pos] at @s run rotate @s ~1 ~



#execute as @e[tag=cg_tardis.interior.monitor.text.PosX] at @s run data merge entity @s {text:[{"score":{"name":"@p","objective":"cg_tardis.tardis.TargetX"}}]}
#execute as @e[tag=cg_tardis.interior.monitor.text.PosY] at @s run data merge entity @s {text:[{"score":{"name":"@p","objective":"cg_tardis.tardis.TargetY"}}]}
#execute as @e[tag=cg_tardis.interior.monitor.text.PosZ] at @s run data merge entity @s {text:[{"score":{"name":"@p","objective":"cg_tardis.tardis.TargetZ"}}]}

function cg_tardis:tardis/interior/buttons