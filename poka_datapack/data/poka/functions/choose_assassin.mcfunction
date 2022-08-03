#職業選択にて看板をクリックした際の処理をこちらに記載する
#看板から実行した時以外は、基本的に正常に動かない
#また、看板は、一度使用すると削除される仕様となっている

#看板のgiveコマンド
#/give @p minecraft:oak_sign{BlockEntityTag:{Text1:'[{"text":"","clickEvent":{"action":"run_command","value":"function poka:choose_assassin"}},{"text":"\\u30a2\\u30b5\\u30b7\\u30f3","bold":true,"underlined":true},{"text":"\\u3092\\u9078\\u629e"}]'},display:{Name:'{"text":"Custom Sign"}'}}
#看板の設置コマンド
#/setblock 7 -21 -2 oak_sign[facing = west]{Text1:'[{"text":"","clickEvent":{"action":"run_command","value":"function poka:choose_assassin"}},{"text":"\\u30a2\\u30b5\\u30b7\\u30f3","bold":true,"underlined":true},{"text":"\\u3092\\u9078\\u629e"}]'}

#ここから処理を書く

execute as @p[scores={chose = 1}] run title @p[scores={chose = 1}] title "あなたは職業を選択済みです"
execute as @p[scores={chose = 0}] run scoreboard players set @p[scores={chose = 0}] Assassin 1
execute as @p[scores={chose = 0}] run playsound minecraft:block.wooden_button.click_on master @p[scores={chose = 0}] ~ ~ ~ 999 1
execute as @p[scores={chose = 0}] run setblock ~ ~ ~ air
execute as @p[scores={chose = 0}] run setblock -1 -22 1 oak_wall_sign[facing = west]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tp @p 6 -21 1"}}',Text2:'{"text":"\\u8077\\u696d\\u9078\\u629e\\u6240\\u306b\\u5165\\u308b","clickEvent":{"action":"run_command","value":"setblock ~ ~ ~ air"},"bold":true,"underlined":true,"color":"dark_aqua"}'}
execute as @p[scores={chose = 0}] run scoreboard players set @p[scores={chose = 0}] chose 1
execute as @p[scores={Assassin = 1}] run tp @p 11 -22 28
title @a[scores={Assassin = 1}] actionbar {"text":"アサシンを選択しました","color":"black"}