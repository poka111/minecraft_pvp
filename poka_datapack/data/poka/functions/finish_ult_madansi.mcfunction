#このファンクションは、魔弾士の奥義の終了処理をするものである.
#スケジュールにて呼び出される.
clear @a[scores={ULT_Madansi = 2}] minecraft:nether_star
give @a[scores={ULT_Madansi = 2}] minecraft:nether_star{display:{Name:"\"魔力\""}} 50
scoreboard players set @a[scores={ULT_Madansi = 2}] ULT_Madansi 9999