##常に実行されるパッシブスキル


##剣士
effect give @a[scores={Kenshi = 1},tag=start] minecraft:resistance 1 0 true

##アサシン
effect give @a[scores={sneakTime=1..,Assassin = 1},tag=start] minecraft:invisibility 1 1 true
effect clear @a[scores={sneakTime=0,Assassin = 1},tag=start] minecraft:invisibility
execute as @a[scores={sneakTime=1..,Assassin = 1},tag=start] run scoreboard players set @a[scores={sneakTime=1..,Assassin = 1}] sneakTime 0

##テレポーター
execute as @a[scores={sneakTime = 1..,blink = 1..},tag=start] at @s run execute if block ^ ^ ^0.5 #minecraft:air_light if block ^ ^ ^1 #minecraft:air_light if block ^ ^ ^1.5 #minecraft:air_light if block ^ ^ ^2 #minecraft:air_light if block ^ ^ ^2.5 #minecraft:air_light if block ^ ^ ^3 #minecraft:air_light if block ^ ^ ^3.5 #minecraft:air_light if block ^ ^ ^4 #minecraft:air_light if block ^ ^ ^4.5 #minecraft:air_light if block ^ ^ ^5 #minecraft:air_light if block ^ ^ ^5.2 #minecraft:air_light run tp @s ^ ^ ^5




execute as @a[scores={sneakTime = 1..,blink = 1..},tag=start] at @s run execute if block ^ ^ ^0.5 #minecraft:air_light if block ^ ^ ^1 #minecraft:air_light if block ^ ^ ^1.5 #minecraft:air_light if block ^ ^ ^2 #minecraft:air_light if block ^ ^ ^2.5 #minecraft:air_light if block ^ ^ ^3 #minecraft:air_light if block ^ ^ ^3.5 #minecraft:air_light if block ^ ^ ^4 #minecraft:air_light if block ^ ^ ^4.5 #minecraft:air_light if block ^ ^ ^5 #minecraft:air_light if block ^ ^ ^5.2 #minecraft:air_light run scoreboard players remove @s blink 1





execute as @a[scores={sneakTime = 1..},tag=start] run scoreboard players set @a[scores={sneakTime = 1..}] sneakTime 0