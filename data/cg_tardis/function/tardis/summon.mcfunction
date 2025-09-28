scoreboard players add .max_id cg_tardis.tardisID 1
execute store result storage cg_tardis:generic maxTardisID double 50 run scoreboard players get .max_id cg_tardis.tardisID
execute align xyz positioned ~0.5 ~ ~0.5 run function cg_tardis:tardis/exterior/summon
function cg_tardis:tardis/interior/position with storage cg_tardis:generic