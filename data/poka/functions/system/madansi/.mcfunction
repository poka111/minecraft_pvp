#魔力瓶(MP回復値：50)処理
execute as @a[scores={drink = 1..,Madansi = 1}] at @s run scoreboard players add @s MP 50
execute as @a[scores={drink = 1..,Madansi = 1}] run scoreboard players set @a[scores={drink = 1..}] drink 0