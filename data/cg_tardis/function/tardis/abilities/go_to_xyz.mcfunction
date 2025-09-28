# Ran as + at the exterior

fill ~ ~ ~ ~ ~2 ~ air replace barrier
fill ~ ~ ~ ~ ~2 ~ air replace light

$forceload add $(currentTardisTargetX) $(currentTardisTargetZ)
$tp @s $(currentTardisTargetX) $(currentTardisTargetY) $(currentTardisTargetZ)
execute at @s unless function cg_tardis:tardis/checks/exterior_has_space run spreadplayers ~ ~ 0 1 under 0 false @s
tp @n[type=interaction,tag=cg_tardis.exterior.interaction] @s
execute at @s as @n[tag=cg_tardis.exterior.interaction,type=interaction] at @s run tp ^ ^ ^0.2

execute at @s run fill ~ ~ ~ ~ ~1 ~ barrier replace air
execute at @s run fill ~ ~2 ~ ~ ~2 ~ light[level=15] replace air

forceload remove ~ ~