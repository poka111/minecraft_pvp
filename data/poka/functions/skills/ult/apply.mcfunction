#>poka:skills/ult/apply
#奥義用のファンクション(奥義アイテムを使用するとこのfunctionを実行)
#基本的に@sを使っても問題ないが、様々な職業の奥義は、全てこのファンクションを通るので、
#必ず、対象の職業かどうかのスコア判定をしてから、奥義処理を行う事
#(挙動とスコア操作がかなりややこしいので、ここは奥義専用のスコア操作のみで、挙動をskillsystemに任せても良い)
#もしくは、奥義は一度しか使用できないので、revokeしなくてもよいが、その挙動に変更する場合は、必ずreset_score もしくは、resetにて、全員を対象にrevokeすること

#鬼人奥義
execute as @s[scores={Kizin = 1}] run scoreboard players set @s ULT_kizinka 1
#スナイパー奥義
execute as @s[scores={sniper = 1}] run scoreboard players set @s ULT_sisen 1
#暗殺者奥義
execute as @s[scores={Assassin = 1}] run scoreboard players set @s ULT_kokusimusou 1
#剣士奥義
execute as @s[scores={Kenshi = 1}] at @s run function poka:skills/ult/kenshi
#魔弾士奥義ULT_Madansi = 0
execute as @s[scores={Madansi = 1}] at @s run function poka:skills/ult/madansi/apply
#魔法師奥義ULT_burst
execute as @s[scores={magician = 1}] run scoreboard players set @s ULT_burst 1


playsound minecraft:entity.ender_dragon.ambient player @s ~ ~ ~


#進捗取り消しを実行しないことで、再使用を防ぐ。
#リセットにて、奥義進捗のrevokeを行う
#advancement revoke @s only poka:use_ougi