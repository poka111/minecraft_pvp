#スポーン地点に設置する(コマンドブロックで実行)
#リピート・信号ONで実行する事

#死亡判定もこちらで行う

function poka:reget_occitem
gamemode adventure @p

#周囲6mのアマスタをkill(リスポーン地点の壁抜きを防止)
kill @e[type=minecraft:armor_stand,distance=..3]

#不正防止用コマンドの実行予約(30秒後、不正防止コマンドの実行を開始)

#剣士
execute as @p[scores={Kenshi = 1,huseibousi = 0}] run schedule function poka:huseikill_kenshi 600t
execute as @p[scores={Kenshi = 1,huseibousi = 0}] run scoreboard players set @p huseibousi 1

#傭兵
execute as @p[scores={Youhei = 1,huseibousi = 0}] run schedule function poka:huseikill_youhei 600t
execute as @p[scores={Youhei = 1,huseibousi = 0}] run scoreboard players set @p huseibousi 1

#狂弾士
execute as @p[scores={Kyoudan = 1,huseibousi = 0}] run schedule function poka:huseikill_kyoudan 600t
execute as @p[scores={Kyoudan = 1,huseibousi = 0}] run scoreboard players set @p huseibousi 1

#ランバージャック
execute as @p[scores={Lumber = 1,huseibousi = 0}] run schedule function poka:huseikill_lumber 600t
execute as @p[scores={Lumber = 1,huseibousi = 0}] run scoreboard players set @p huseibousi 1

#アサシン
execute as @p[scores={Assassin = 1,huseibousi = 0}] run schedule function poka:huseikill_assassin 600t
execute as @p[scores={Assassin = 1,huseibousi = 0}] run scoreboard players set @p huseibousi 1

#ボマー
execute as @p[scores={Bommer = 1,huseibousi = 0}] run schedule function poka:huseikill_bommer 600t
execute as @p[scores={Bommer = 1,huseibousi = 0}] run scoreboard players set @p huseibousi 1

#スナイパー
execute as @p[scores={sniper = 1,huseibousi = 0}] run schedule function poka:huseikill_sniper 600t
execute as @p[scores={sniper = 1,huseibousi = 0}] run scoreboard players set @p huseibousi 1

#魔法師
execute as @p[scores={magician = 1,huseibousi = 0}] run schedule function poka:huseikill_magician 600t
execute as @p[scores={magician = 1,huseibousi = 0}] run scoreboard players set @p huseibousi 1

#鬼人
execute as @p[scores={Kizin = 1,huseibousi = 0}] run schedule function poka:huseikill_kizin 600t
execute as @p[scores={Kizin = 1,huseibousi = 0}] run scoreboard players set @p huseibousi 1

#魔弾士
execute as @p[scores={Madansi = 1,huseibousi = 0}] run schedule function poka:huseikill_madansi 600t
execute as @p[scores={Madansi = 1,huseibousi = 0}] run scoreboard players set @p huseibousi 1