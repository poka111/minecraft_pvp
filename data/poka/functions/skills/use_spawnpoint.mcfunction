#>poka:skills/use_spawnpoint
#give
#give @a minecraft:firework_rocket{CustomModelData:32,display:{Name:"{\"text\":\"スポーン地点を設定\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"使用地点をスポーン地点に設定する\",\"italic\":false,\"color\":\"white\"}"]}} 1

##共通動作
playsound minecraft:block.stone_button.click_on player @s ~ ~ ~ 1
title @s title ""

##セッティング成功(他のプレイヤーのスポーンポイントが周囲10m以内に無い場合)
execute unless entity @e[type=minecraft:armor_stand,tag=spawnpoint,distance=..10] run scoreboard players set @s setting_spawnpoint 1
execute unless entity @e[type=minecraft:armor_stand,tag=spawnpoint,distance=..10] run spawnpoint @s ~ ~ ~
execute unless entity @e[type=minecraft:armor_stand,tag=spawnpoint,distance=..10] run title @s subtitle "スポーン地点を設定しました"

##セッティング失敗(他のプレイヤーのスポーンポイントが周囲10m以内に在る場合)
execute if entity @e[type=minecraft:armor_stand,tag=spawnpoint,distance=..10] run title @s subtitle "近くに他プレイヤーのスポーン地点があります. 場所を変更してください."
execute if entity @e[type=minecraft:armor_stand,tag=spawnpoint,distance=..10] run give @s minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],CustomModelData:32,display:{Name:"{\"text\":\"スポーン地点を設定\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"使用地点をスポーン地点に設定する\",\"italic\":false,\"color\":\"white\"}"]}} 1
execute if entity @e[type=minecraft:armor_stand,tag=spawnpoint,distance=..10] run advancement revoke @s only poka:use_spawnpoint

##セッティング成功時の最終動作
execute unless entity @e[type=minecraft:armor_stand,tag=spawnpoint,distance=..10] run summon minecraft:armor_stand ~ ~ ~ {Tags:["spawnpoint"],NoAI:true,NoGravity:true,Small:true,Invisible:true}

##セッティング成功時、全員がスポーンポイント設定済み(setting_spawnpointが0の人が居なければ)の場合は次のフェーズに移行する
execute unless entity @a[scores={setting_spawnpoint = 0}] run function poka:game/start_phase2