#>poka:game/start
##全員をチームに参加
team join pvp @a

##試合開始タグの付与
tag @a add start

##リスポーンタグを付与
tag @a add respawn

##リスポーンタグの付与削除を予約
schedule function poka:game/delete_tag_a 10s

##エフェクト削除
effect clear @a

##アイテム配布
function poka:give/occitem

##開始サウンド
execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient player @a ~ ~ ~

##全員に体力回復(5秒間無敵状態)
effect give @a minecraft:regeneration 10 200 true

##タイトル削除
title @a clear

##パッシブ発動開始
function poka:passive/once