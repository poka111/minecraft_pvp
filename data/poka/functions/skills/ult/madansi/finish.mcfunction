#>poka:skills/ult/madansi/finish
##このファンクションは、魔弾士の奥義の終了処理をするものである.
#スケジュールにて呼び出される.
#再使用不可に設定(ULT_Madansi -> 9999)
execute as @a[scores={ULT_Madansi = 1}] run scoreboard players set @s ULT_Madansi 9999