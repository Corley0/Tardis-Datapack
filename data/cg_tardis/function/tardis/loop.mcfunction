execute as @e[tag=cg_tardis.tardis.interaction] at @s if data entity @s interaction run function cg_tardis:tardis/interactions/doors

#execute as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.doorOpen matches 1.. at @s positioned ^ ^ ^0.6 if entity @p[distance=0..1] run tp @p[distance=0..0.5] ^ ^ ^3


execute as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.doorOpen matches 1 at @s positioned ^ ^ ^0.5 if entity @p[distance=0..0.5] run function cg_tardis:tardis/enter
execute as @e[tag=cg_tardis.interior.anchor] at @s positioned ^ ^ ^0.5 if entity @p[distance=0..0.5] run function cg_tardis:tardis/exit

execute as @e[tag=cg_tardis.exterior.anchor] store result score @s cg_tardis.tardisRotation run data get entity @s Rotation[0]