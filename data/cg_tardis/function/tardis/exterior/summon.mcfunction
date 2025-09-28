forceload add ~ ~
summon item_display ~ ~ ~ {Tags:["cg_tardis", "cg_tardis.tardis", "cg_tardis.exterior.anchor", "cg_tardis.exterior.setup"], item:{id:"minecraft:armor_stand",components:{item_model:"cg_tardis:exterior_closed"}}, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]}}
summon interaction ~ ~ ~ {Tags:["cg_tardis", "cg_tardis.tardis", "cg_tardis.exterior.interaction", "cg_tardis.exterior.setup", "cg_tardis.tardis.interaction"],width:0.9, height:2}
execute as @n[tag=cg_tardis.exterior.setup,tag=cg_tardis.exterior.interaction] at @s run tp ^ ^ ^0.2
fill ~ ~ ~ ~ ~1 ~ barrier
setblock ~ ~2 ~ light[level=15] keep


scoreboard players set @n[tag=cg_tardis.exterior.anchor,tag=cg_tardis.exterior.setup] cg_tardis.doorOpen 0
execute as @n[tag=cg_tardis.exterior.anchor,tag=cg_tardis.exterior.setup] store result score @s cg_tardis.tardisID run scoreboard players get .max_id cg_tardis.tardisID
execute as @n[tag=cg_tardis.exterior.interaction,tag=cg_tardis.exterior.setup] store result score @s cg_tardis.tardisID run scoreboard players get .max_id cg_tardis.tardisID


execute as @e[tag=cg_tardis.exterior.anchor,tag=cg_tardis.exterior.setup] run scoreboard players add @s cg_tardis.tardis.TargetX 0
execute as @e[tag=cg_tardis.exterior.anchor,tag=cg_tardis.exterior.setup] run scoreboard players add @s cg_tardis.tardis.TargetY 0
execute as @e[tag=cg_tardis.exterior.anchor,tag=cg_tardis.exterior.setup] run scoreboard players add @s cg_tardis.tardis.TargetZ 0

tag @e[tag=cg_tardis.exterior.setup,sort=nearest,limit=2] remove cg_tardis.exterior.setup