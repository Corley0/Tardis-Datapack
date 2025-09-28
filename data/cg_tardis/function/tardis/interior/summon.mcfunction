forceload add ~ ~
summon item_display ~ ~ ~ {Tags:["cg_tardis", "cg_tardis.tardis", "cg_tardis.interior.anchor", "cg_tardis.interior.setup"], item:{id:"minecraft:armor_stand",components:{item_model:"cg_tardis:interior_closed"}}, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]}}
summon interaction ~ ~ ~ {Tags:["cg_tardis", "cg_tardis.tardis", "cg_tardis.interior.interaction", "cg_tardis.interior.setup", "cg_tardis.tardis.interaction"],width:0.9, height:2}
execute as @n[tag=cg_tardis.interior.setup,tag=cg_tardis.interior.interaction] at @s run tp ^ ^ ^0.2


execute as @n[tag=cg_tardis.interior.anchor,tag=cg_tardis.interior.setup] store result score @s cg_tardis.tardisID run scoreboard players get .max_id cg_tardis.tardisID
execute as @n[tag=cg_tardis.interior.interaction,tag=cg_tardis.interior.setup] store result score @s cg_tardis.tardisID run scoreboard players get .max_id cg_tardis.tardisID

tag @e[tag=cg_tardis.interior.setup,sort=nearest,limit=2] remove cg_tardis.interior.setup

place template cg_tardis:test_tardis ~-19 ~-8 ~-4 none none 1
fill ~ ~ ~ ~ ~1 ~ barrier
execute positioned ~ ~ ~15 run function cg_tardis:tardis/interior/console/summon