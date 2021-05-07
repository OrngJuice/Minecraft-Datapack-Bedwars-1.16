#the function scheduled to start it all

#scoreboards
scoreboard objectives add clockseconds dummy
scoreboard players set $diaSpawner clockseconds 0
scoreboard players set $goldForge clockseconds 0

scoreboard objectives add randomStuff dummy

scoreboard objectives add gameStarted dummy
scoreboard players set $started gameStarted 1


#schedules
schedule function start:tick 1t
schedule function start:sec 1t
schedule function start:gamerules 1t