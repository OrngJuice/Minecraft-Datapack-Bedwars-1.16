#every command here repeats every second, but starts after /function start:start

#loops the function
schedule function start:sec 1s

#spawns iron, gold, emeralds, diamonds
execute as @e[type=minecraft:armor_stand,tag=forge] at @s run summon item ~ ~ ~ {Age:-32768,Item:{id:"minecraft:iron_ingot",Count:1b,tag:{forgeIron:1b}}}
execute as @e[type=minecraft:armor_stand,tag=forge] at @s if score $goldForge clockseconds matches 6 run summon item ~ ~ ~ {Age:-32768,Item:{id:"minecraft:gold_ingot",Count:1b,tag:{forgeGold:1b}}}
execute as @e[type=minecraft:armor_stand,tag=diaspawner] at @s if score $diaSpawner clockseconds matches 30 run summon item ~ ~ ~ {Age:-32768,Item:{id:"minecraft:diamond",Count:1b,tag:{spawnerDiamond:1b}}}

#scoreboards
scoreboard players add $diaSpawner clockseconds 1
execute if score $diaSpawner clockseconds matches 31.. run scoreboard players set $diaSpawner clockseconds 0
scoreboard players add $goldForge clockseconds 1
execute if score $goldForge clockseconds matches 7.. run scoreboard players set $goldForge clockseconds 0