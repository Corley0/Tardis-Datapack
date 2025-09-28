# 0
execute if score @n[tag=cg_tardis.exterior.anchor] cg_tardis.tardisRotation matches 0 as @p at @s run rotate @s ~180 ~

# 90
execute if score @n[tag=cg_tardis.exterior.anchor] cg_tardis.tardisRotation matches 90 as @p at @s run rotate @s ~90 ~

# 180
execute if score @n[tag=cg_tardis.exterior.anchor] cg_tardis.tardisRotation matches 180 as @p at @s run rotate @s ~0 ~

# 270
execute if score @n[tag=cg_tardis.exterior.anchor] cg_tardis.tardisRotation matches 270 as @p at @s run rotate @s ~-90 ~
execute if score @n[tag=cg_tardis.exterior.anchor] cg_tardis.tardisRotation matches -90 as @p at @s run rotate @s ~-90 ~