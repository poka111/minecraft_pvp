##ゲーム開始・フェーズ1

##全員をマップにTPし、スポーン地点の設定フェーズに入る
##全員がスポーン地点設定を終えたら、フェーズ2に移行する
##フェーズ2はuse_spawnpoint経由で移行

#全員をチームに参加
team join pvp @a

execute if entity @a[tag=!ready] run tellraw @s "準備が未完了のプレイヤーが存在します"

##デバッグ町に地点にTP
execute unless entity @a[tag=!ready] run tp @a[scores={map = 0}] 53 -22 65
##kingdom
execute unless entity @a[tag=!ready] run tp @a[scores={map = 1}] 220 8 265
##station
execute unless entity @a[tag=!ready] run tp @a[scores={map = 2}] -7 -20 275
##town
execute unless entity @a[tag=!ready] run tp @a[scores={map = 3}] -200 -4 126
##library
execute unless entity @a[tag=!ready] run tp @a[scores={map = 4}] 562 -7 556
##server room
execute unless entity @a[tag=!ready] run tp @a[scores={map = 5}] 1046 -12 1048
##日本庭園
execute unless entity @a[tag=!ready] run tp @a[scores={map = 6}] -905 -13 1093
##lab
execute unless entity @a[tag=!ready] run tp @a[scores={map = 7}] 2075 -19 2054

###マップ座標

##図書館
#500 0 500

##server room
#1000 0 1000

##日本庭園
#-1000 0 1000

##研究所
#2000 0 2000

playsound minecraft:block.wooden_button.click_on player @a ~ ~ ~ 900 1

execute unless entity @a[tag=!ready] run title @a title ""
execute unless entity @a[tag=!ready] run title @a subtitle "スポーン地点を設定してください"
execute unless entity @a[tag=!ready] run give @a minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:32,display:{Name:"{\"text\":\"スポーン地点を設定\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"使用した場所をスポーン地点に設定する\",\"italic\":false,\"color\":\"white\"}"]}} 1
execute unless entity @a[tag=!ready] run effect give @a minecraft:invisibility 180 200 true
execute unless entity @a[tag=!ready] run effect give @a minecraft:speed 180 20 true
