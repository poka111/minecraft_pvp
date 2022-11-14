##テレポーターの特殊スキル実装(長距離TP)
execute as @a[scores={Teleporter=1,R_click=1..,blink=10},tag=start] at @s run function poka:skills/teleporter/longtp/apply

#テレポーターブリンク数上限設定(10)
execute as @a[scores={Teleporter = 1,blink = 11..}] at @s run scoreboard players remove @s blink 1