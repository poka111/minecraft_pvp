#職業別のアイテムを配布する(最寄り(自分自身)にのみ配布を実行する)
#give_occitem.mcfunctionでは、全員に職業別アイテムを配布する

execute as @p[scores={Youhei = 1}] run function poka:youhei

execute as @p[scores={sniper = 1}] run function poka:sniper

execute as @p[scores={magician = 1}] run function poka:magician

execute as @p[scores={Madansi = 1}] run function poka:madansi

execute as @p[scores={Lumber = 1}] run function poka:lumber

execute as @p[scores={Kyoudan = 1}] run function poka:kyoudan

execute as @p[scores={Kizin = 1}] run function poka:kizin

execute as @p[scores={Kenshi = 1}] run function poka:kenshi

execute as @p[scores={Bommer = 1}] run function poka:bommer

execute as @p[scores={Assassin = 1}] run function poka:assassin