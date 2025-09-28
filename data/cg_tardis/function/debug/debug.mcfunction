execute if score .mode cg_tardis.debugMode matches 1 as @e[tag=cg_tardis.exterior.anchor] at @s positioned ^ ^ ^0.5 run function cg_tardis:debug/door_hitbox
execute if score .mode cg_tardis.debugMode matches 1 as @e[tag=cg_tardis.interior.anchor] at @s positioned ^ ^ ^0.5 run function cg_tardis:debug/door_hitbox

execute if score .mode cg_tardis.debugMode matches 2 if items entity @s weapon.mainhand wooden_hoe[custom_data~{DebugHoe:1b}] at @s run title @s actionbar ["Nearest ID: ",{"score":{"name":"@n[tag=cg_tardis.tardis]","objective":"cg_tardis.tardisID"}}]