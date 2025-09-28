execute as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.tardisID = @n[tag=cg_tardis.tardis.interaction] cg_tardis.tardisID run scoreboard players add @s cg_tardis.doorOpen 1
execute as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.doorOpen matches 2.. run scoreboard players set @s cg_tardis.doorOpen 0

# Item Model Linking
execute as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.doorOpen matches 1 run data modify entity @s item.components."minecraft:item_model" set value "cg_tardis:exterior_open"
execute as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.doorOpen matches 0 run data modify entity @s item.components."minecraft:item_model" set value "cg_tardis:exterior_closed"

execute as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.doorOpen matches 1 at @s as @e[tag=cg_tardis.interior.anchor] if score @s cg_tardis.tardisID = @n[tag=cg_tardis.exterior.anchor] cg_tardis.tardisID run data modify entity @s item.components."minecraft:item_model" set value "cg_tardis:interior_open"
execute as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.doorOpen matches 0 at @s as @e[tag=cg_tardis.interior.anchor] if score @s cg_tardis.tardisID = @n[tag=cg_tardis.exterior.anchor] cg_tardis.tardisID run data modify entity @s item.components."minecraft:item_model" set value "cg_tardis:interior_closed"

# Reset
data modify entity @s interaction set value {}