execute as @e[tag=cg_tardis.interior.cord_selector.X] if data entity @s interaction at @s at @n[tag=cg_tardis.interior.anchor] as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.tardisID = @n[tag=cg_tardis.interior.anchor] cg_tardis.tardisID run scoreboard players add @s cg_tardis.tardis.TargetX 1
execute as @e[tag=cg_tardis.interior.cord_selector.X] if data entity @s attack at @s at @n[tag=cg_tardis.interior.anchor] as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.tardisID = @n[tag=cg_tardis.interior.anchor] cg_tardis.tardisID run scoreboard players remove @s cg_tardis.tardis.TargetX 1


execute as @e[tag=cg_tardis.interior.cord_selector.Y] if data entity @s interaction at @s at @n[tag=cg_tardis.interior.anchor] as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.tardisID = @n[tag=cg_tardis.interior.anchor] cg_tardis.tardisID run scoreboard players add @s cg_tardis.tardis.TargetY 1
execute as @e[tag=cg_tardis.interior.cord_selector.Y] if data entity @s attack at @s at @n[tag=cg_tardis.interior.anchor] as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.tardisID = @n[tag=cg_tardis.interior.anchor] cg_tardis.tardisID run scoreboard players remove @s cg_tardis.tardis.TargetY 1


execute as @e[tag=cg_tardis.interior.cord_selector.Z] if data entity @s interaction at @s at @n[tag=cg_tardis.interior.anchor] as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.tardisID = @n[tag=cg_tardis.interior.anchor] cg_tardis.tardisID run scoreboard players add @s cg_tardis.tardis.TargetZ 1
execute as @e[tag=cg_tardis.interior.cord_selector.Z] if data entity @s attack at @s at @n[tag=cg_tardis.interior.anchor] as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.tardisID = @n[tag=cg_tardis.interior.anchor] cg_tardis.tardisID run scoreboard players remove @s cg_tardis.tardis.TargetZ 1

execute as @e[tag=cg_tardis.interior.cord_selector] if data entity @s interaction at @s run playsound minecraft:block.stone_button.click_on block @a ~ ~ ~ 1 1
execute as @e[tag=cg_tardis.interior.cord_selector] if data entity @s attack at @s run playsound minecraft:block.stone_button.click_on block @a ~ ~ ~ 1 1



execute as @e[tag=cg_tardis.interior.lever.interaction] if data entity @s interaction at @s at @n[tag=cg_tardis.interior.anchor] as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.tardisID = @n[tag=cg_tardis.interior.anchor] cg_tardis.tardisID at @s store result storage cg_tardis:generic currentTardisTargetX int 1 run scoreboard players get @s cg_tardis.tardis.TargetX
execute as @e[tag=cg_tardis.interior.lever.interaction] if data entity @s interaction at @s at @n[tag=cg_tardis.interior.anchor] as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.tardisID = @n[tag=cg_tardis.interior.anchor] cg_tardis.tardisID at @s store result storage cg_tardis:generic currentTardisTargetY int 1 run scoreboard players get @s cg_tardis.tardis.TargetY
execute as @e[tag=cg_tardis.interior.lever.interaction] if data entity @s interaction at @s at @n[tag=cg_tardis.interior.anchor] as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.tardisID = @n[tag=cg_tardis.interior.anchor] cg_tardis.tardisID at @s store result storage cg_tardis:generic currentTardisTargetZ int 1 run scoreboard players get @s cg_tardis.tardis.TargetZ

execute as @e[tag=cg_tardis.interior.lever.interaction] if data entity @s interaction at @s at @n[tag=cg_tardis.interior.anchor] as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.tardisID = @n[tag=cg_tardis.interior.anchor] cg_tardis.tardisID at @s run function cg_tardis:tardis/abilities/go_to_xyz with storage cg_tardis:generic
execute as @e[tag=cg_tardis.interior.lever.interaction] if data entity @s interaction at @s run playsound minecraft:block.chest.close block @a ~ ~ ~ 1 0.5


execute as @e[tag=cg_tardis.interior.cord_selector] run data modify entity @s interaction set value {}
execute as @e[tag=cg_tardis.interior.lever.interaction] run data modify entity @s interaction set value {}
execute as @e[tag=cg_tardis.interior.cord_selector] run data modify entity @s attack set value {}



#execute as @e[tag=cg_tardis.interior.cord_selector.X] if data entity @s interaction at @s at @n[tag=cg_tardis.interior.anchor] as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.tardisID = @n[tag=cg_tardis.interior.anchor] cg_tardis.tardisID run scoreboard players add @s cg_tardis.tardis.TargetX 1

#execute as @e[tag=cg_tardis.interior.monitor.text.PosX] at @s run data merge entity @s {text:[{"score":{"name":"@p","objective":"cg_tardis.tardis.TargetX"}}]}


execute as @a at @s if dimension cg_tardis:cg_tardis_interior at @n[tag=cg_tardis.interior.anchor] as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.tardisID = @n[tag=cg_tardis.interior.anchor] cg_tardis.tardisID run title @p actionbar ["Target Position: ",{"score":{"name":"@s","objective":"cg_tardis.tardis.TargetX"}},", ",{"score":{"name":"@s","objective":"cg_tardis.tardis.TargetY"}},", ",{"score":{"name":"@s","objective":"cg_tardis.tardis.TargetZ"}}]