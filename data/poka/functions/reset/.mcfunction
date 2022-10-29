##リセット通知
title @a title "ゲームリセットを実行しました"

##体力変更職業の体力を初期化
attribute @a[scores={Assassin = 1},limit=1] minecraft:generic.max_health base set 20
attribute @a[scores={sniper = 1},limit=1] minecraft:generic.max_health base set 20

##スコアボードの初期化
function poka:reset/reset_score

##タグの削除
tag @a remove start
tag @a remove respawn

##リセット用RSB削除
setblock -7 -57 23 air

##もしC4の残骸があれば、削除
execute as @e[type=minecraft:armor_stand,tag=c4] at @s run setblock ~ ~ ~ air
execute as @e[type=minecraft:armor_stand,tag=c4] at @s run kill @e[type=minecraft:armor_stand,tag=c4]

##初期地点にテレポート
tp @a -5 -23 1

##経験値をリセット
xp set @a 0 levels

##タグ等の削除
#準備完了tagの削除
tag @a remove ready

##その他の処理
gamemode adventure @a
clear @a
kill @e[type= !minecraft:player]
effect give @a minecraft:instant_damage 1 200 false
effect give @a minecraft:instant_health 1 200 false
spawnpoint @a -8 -23 1
setblock -1 -22 1 oak_wall_sign[facing = west]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tp @p 6 -21 1"}}',Text2:'{"text":"\\u8077\\u696d\\u9078\\u629e\\u6240\\u306b\\u5165\\u308b","clickEvent":{"action":"run_command","value":"setblock ~ ~ ~ air"},"bold":true,"underlined":true,"color":"dark_aqua"}'}

##マップ選択及びストック選択を初期化
function poka:reset/reset_choose_map
function poka:reset/reset_choose_stock
setblock 14 -21 34 redstone_block replace
setblock 14 -21 22 redstone_block replace


##職業選択の看板を生成
function poka:reset/reset_choose_occ

##体力回復・更新
effect give @a minecraft:instant_health 1 100
effect clear @a