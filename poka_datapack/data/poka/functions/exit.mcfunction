#リスポーン後、リスポーン地点から外に出る為のファンクション
##Exit看板使用時に呼び出される


#アイテムを再配布(functionを使うと、TPで処理が不安定になるため、使わない)
#execute as @p[scores={Youhei = 1}] run function poka:youhei

#execute as @p[scores={sniper = 1}] run function poka:sniper

#execute as @p[scores={magician = 1}] run function poka:magician

#execute as @p[scores={Madansi = 1}] run function poka:madansi

#execute as @p[scores={Lumber = 1}] run function poka:lumber

#execute as @p[scores={Kyoudan = 1}] run function poka:kyoudan

#execute as @p[scores={Kizin = 1}] run function poka:kizin

#execute as @p[scores={Kenshi = 1}] run function poka:kenshi

#execute as @p[scores={Bommer = 1}] run function poka:bommer

#execute as @p[scores={Assassin = 1}] run function poka:assassin

#無敵を10秒間付与(耐性Ⅴ)
effect give @p minecraft:resistance 10 4 true

#HPを回復
effect give @p minecraft:regeneration 10 100 true

##体力を再設定

#アサシン
attribute @p[scores={Assassin = 1},limit=1] minecraft:generic.max_health base set 6
effect give @p[scores={Assassin = 1}] minecraft:instant_health 1 0

#スナイパー
attribute @p[scores={sniper = 1},limit=1] minecraft:generic.max_health base set 6
effect give @p[scores={sniper = 1}] minecraft:instant_health 1 0

#不正(スポーン地点に籠る)防止用スコアボードの初期化
scoreboard players set @p huseibousi 0

#不正防止用コマンドの削除
execute as @p[scores={Youhei = 1}] run schedule clear poka:huseikill_youhei

execute as @p[scores={sniper = 1}] run schedule clear poka:huseikill_sniper

execute as @p[scores={magician = 1}] run schedule clear poka:huseikill_magician

execute as @p[scores={Madansi = 1}] run schedule clear poka:huseikill_madansi

execute as @p[scores={Lumber = 1}] run schedule clear poka:huseikill_lumber

execute as @p[scores={Kyoudan = 1}] run schedule clear poka:huseikill_kyoudan

execute as @p[scores={Kizin = 1}] run schedule clear poka:huseikill_kizin

execute as @p[scores={Kenshi = 1}] run schedule clear poka:huseikill_kenshi

execute as @p[scores={Bommer = 1}] run schedule clear poka:huseikill_bommer

execute as @p[scores={Assassin = 1}] run schedule clear poka:huseikill_assassin

#ゲームモード変更(サバイバル)
gamemode survival @p

#スポーン地点から抜ける(デバッグ町)
spreadplayers 54 65 20 20 under 0 false @p

#死亡数が規定以上なら観戦エリアに移動してアイテムを削除
execute if entity @p[scores={deaths = 5..}] run tp @p 52 22 65
clear @p[scores={deaths = 5..}]

