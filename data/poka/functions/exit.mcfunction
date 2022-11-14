#>poka:exit

#リスポーン後、リスポーン地点から外に出る為のファンクション
##Exit看板使用時に呼び出される

#無敵を10秒間付与(耐性Ⅴ)
effect give @s minecraft:resistance 10 4 true

#HPを回復
effect give @s minecraft:regeneration 10 100 true

##体力を再設定

#アサシン
attribute @s[scores={Assassin = 1},limit=1] minecraft:generic.max_health base set 6
effect give @s[scores={Assassin = 1}] minecraft:instant_health 1 0

#スナイパー
attribute @s[scores={sniper = 1},limit=1] minecraft:generic.max_health base set 6
effect give @s[scores={sniper = 1}] minecraft:instant_health 1 0

#不正(スポーン地点に籠る)防止用スコアボードの初期化
scoreboard players set @s huseibousi 0

#不正防止用コマンドの削除
execute as @s[scores={Youhei = 1}] run schedule clear poka:huseikill_youhei

execute as @s[scores={sniper = 1}] run schedule clear poka:huseikill_sniper

execute as @s[scores={magician = 1}] run schedule clear poka:huseikill_magician

execute as @s[scores={Madansi = 1}] run schedule clear poka:huseikill_madansi

execute as @s[scores={Lumber = 1}] run schedule clear poka:huseikill_lumber

execute as @s[scores={Kyoudan = 1}] run schedule clear poka:huseikill_kyoudan

execute as @s[scores={Kizin = 1}] run schedule clear poka:huseikill_kizin

execute as @s[scores={Kenshi = 1}] run schedule clear poka:huseikill_kenshi

execute as @s[scores={Bommer = 1}] run schedule clear poka:huseikill_bommer

execute as @s[scores={Assassin = 1}] run schedule clear poka:huseikill_assassin

#ゲームモード変更(サバイバル)
gamemode adventure @s

#スポーン地点から抜ける(デバッグ町)
spreadplayers 54 65 20 20 under 0 false @s

#死亡数が規定以上なら観戦エリアに移動してアイテムを削除
clear @s[scores={deaths = 5..}]
execute if entity @s[scores={deaths = 5..}] run tp @s 52 22 65


