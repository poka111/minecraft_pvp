#奥義：無限魔装弾(魔弾士の奥義)ULT_Madansi = 0
execute as @a[scores={ULT_Madansi = 1}] run schedule function poka:finish_ult_madansi 600t
execute as @a[scores={ULT_Madansi = 1}] run scoreboard players set @a[scores={ULT_Madansi = 1}] ULT_Madansi 2