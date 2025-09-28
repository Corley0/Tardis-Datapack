# execute as @e[tag=cg_tardis.exterior.anchor] if score @s cg_tardis.tardisID = @n[tag=cg_tardis.tardis.interaction] cg_tardis.tardisID


execute as @e[tag=cg_tardis.exterior.anchor] if score @n[tag=cg_tardis.interior.anchor] cg_tardis.tardisID = @s cg_tardis.tardisID at @s run function cg_tardis:tardis/interior/rotate_plater

execute as @e[tag=cg_tardis.exterior.anchor] if score @n[tag=cg_tardis.interior.anchor] cg_tardis.tardisID = @s cg_tardis.tardisID at @s positioned ^ ^ ^1.5 run tp @p ~ ~ ~