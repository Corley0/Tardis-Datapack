scoreboard objectives add cg_tardis.tardisID dummy
scoreboard objectives add cg_tardis.doorOpen dummy
scoreboard objectives add cg_tardis.config dummy
scoreboard objectives add cg_tardis.debugMode dummy
scoreboard objectives add cg_tardis.tardisRotation dummy

scoreboard objectives add cg_tardis.tardis.TargetX dummy
scoreboard objectives add cg_tardis.tardis.TargetY dummy
scoreboard objectives add cg_tardis.tardis.TargetZ dummy



#execute as @a run function cg_tardis:text/introduction
say Loaded
function cg_tardis:config