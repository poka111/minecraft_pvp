#>poka:skills/use_set_c4
#execute as @e[type=minecraft:firework_rocket] at @s run setblock ~ ~ ~ minecraft:acacia_button[face=floor]

playsound minecraft:block.stone_button.click_on player @s ~ ~ ~

execute at @e[type=minecraft:firework_rocket] run execute if block ~ ~ ~ air run summon minecraft:armor_stand ~ ~ ~ {Tags:["c4"],NoAI:true,NoGravity:true,Small:true,Marker:true,Invisible:true}

execute at @e[type=minecraft:firework_rocket] run execute unless block ~ ~ ~ air run tellraw @s "この位置には設置できません"

execute at @e[type=minecraft:firework_rocket] run execute unless block ~ ~ ~ air run give @s minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:30,display:{Name:"{\"text\":\"【設置】C4\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"C4を設置する\",\"italic\":false,\"color\":\"white\"}"]}} 1

execute at @e[type=minecraft:firework_rocket] unless block ~ ~ ~0.3 minecraft:acacia_button unless block ~ ~ ~0.3 air if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:acacia_button[facing=north]

execute at @e[type=minecraft:firework_rocket] unless block ~0.3 ~ ~ minecraft:acacia_button unless block ~0.3 ~ ~ air if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:acacia_button[facing=west]

execute at @e[type=minecraft:firework_rocket] unless block ~ ~ ~-0.3 minecraft:acacia_button unless block ~ ~ ~-0.3 air if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:acacia_button[facing=south]

execute at @e[type=minecraft:firework_rocket] unless block ~-0.3 ~ ~ minecraft:acacia_button unless block ~-0.3 ~ ~ air if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:acacia_button[facing=east]

execute at @e[type=minecraft:firework_rocket] unless block ~ ~-0.3 ~ minecraft:acacia_button unless block ~ ~-0.3 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:acacia_button[face=floor]

execute at @e[type=minecraft:firework_rocket] unless block ~ ~0.3 ~ minecraft:acacia_button unless block ~ ~0.3 ~ air if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:acacia_button[face=ceiling]

kill @e[type=minecraft:firework_rocket]
advancement revoke @s only poka:use_set_c4
scoreboard players set @s c4 0