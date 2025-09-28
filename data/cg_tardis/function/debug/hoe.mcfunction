execute if items entity @s weapon.offhand wooden_hoe[custom_data~{DebugHoe:1b}] run scoreboard players add .mode cg_tardis.debugMode 1
execute if score .mode cg_tardis.debugMode matches 3.. run scoreboard players set .mode cg_tardis.debugMode 0

execute if items entity @s weapon.offhand wooden_hoe[custom_data~{DebugHoe:1b}] run function cg_tardis:debug/give_item
execute if items entity @s weapon.offhand wooden_hoe[custom_data~{DebugHoe:1b}] run tellraw @s [["\nMode: ",{"score":{"name":".mode","objective":"cg_tardis.debugMode"}},"\n"],["Press ",{"keybind":"key.swapOffhand"}," to change mode"]]

execute if items entity @s weapon.offhand wooden_hoe[custom_data~{DebugHoe:1b}] run item replace entity @s weapon.offhand with air


execute if items entity @s weapon.mainhand wooden_hoe[custom_data~{DebugHoe:1b}] run function cg_tardis:debug/debug

execute unless items entity @a weapon.* wooden_hoe[custom_data~{DebugHoe:1b}] run scoreboard players set .mode cg_tardis.debugMode 0