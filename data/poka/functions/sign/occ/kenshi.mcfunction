#職業選択にて看板をクリックした際の処理をこちらに記載する
#看板から実行した時以外は、基本的に正常に動かない
#また、看板は、一度使用すると削除される仕様となっている

#看板のgiveコマンド
#/give @s minecraft:oak_sign{BlockEntityTag:{Text1:'[{"text":"","clickEvent":{"action":"run_command","value":"function poka:choose_kenshi"}},{"text":"\\u5263\\u58eb","bold":true,"underlined":true,"color":"#515155"},{"text":"\\u3092\\u9078\\u629e"}]'},display:{Name:'{"text":"Custom Sign"}'}}
#設置コマンド
#/setblock ~ ~1 ~ oak_wall_sign[facing = west]{Text1:'[{"text":"","clickEvent":{"action":"run_command","value":"function poka:choose_kenshi"}},{"text":"\\u5263\\u58eb","bold":true,"underlined":true,"color":"#515155"},{"text":"\\u3092\\u9078\\u629e"}]'}

execute as @s[scores={chose = 1}] run title @s[scores={chose = 1}] title "あなたは職業を選択済みです"
execute as @s[scores={chose = 0}] run scoreboard players set @s[scores={chose = 0}] Kenshi 1
execute as @s[scores={chose = 0}] run playsound minecraft:block.wooden_button.click_on master @s[scores={chose = 0}] ~ ~ ~ 999 1
execute as @s[scores={chose = 0}] run setblock ~ ~ ~ air
execute as @s[scores={chose = 0}] run setblock -1 -22 1 oak_wall_sign[facing = west]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tp @s 6 -21 1"}}',Text2:'{"text":"\\u8077\\u696d\\u9078\\u629e\\u6240\\u306b\\u5165\\u308b","clickEvent":{"action":"run_command","value":"setblock ~ ~ ~ air"},"bold":true,"underlined":true,"color":"dark_aqua"}'}
execute as @s[scores={chose = 0}] run scoreboard players set @s[scores={chose = 0}] chose 1
tag @s add ready
execute as @s[scores={Kenshi = 1}] run tp @s -4.5 -22 28.5
title @a[scores={Kenshi = 1}] actionbar {"text":"剣士を選択しました","color":"blue"}