#>poka:skills/longtp

##テレポーターの長距離移動スキルを発動する
execute as @a[scores={Teleporter=1,blink=10},tag=start] at @s run execute if block ^ ^ ^1.2 #minecraft:air_light run tp @s ^ ^ ^1
#再帰
execute as @a[scores={Teleporter=1,blink=10},tag=start] at @s run execute if block ^ ^ ^1.2 #minecraft:air_light run function poka:skills/longtp

#ブリンク全消費
scoreboard players reset @s[scores={Teleporter=1,blink=10},tag=start] blink