#>poka:skills/teleporter/longtp/apply

##テレポーターの長距離移動スキルを発動

#空気ブロックか光源ブロックになるまで、TPする
execute if block ^ ^ ^1.2 #minecraft:air_light run tp @s ^ ^ ^1
#再帰
execute as @a[scores={Teleporter=1,blink=10},tag=start] at @s run execute if block ^ ^ ^1.2 #minecraft:air_light run function poka:skills/teleporter/longtp/apply

#ブリンク全消費
scoreboard players reset @s blink

#右クリック検知初期化
scoreboard players set @s R_click 0