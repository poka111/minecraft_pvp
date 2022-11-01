#>poka:skills/magic/heal/apply


#回復
effect give @s minecraft:instant_health 1 0
#パーティクル表示(全員から見える)
particle minecraft:heart ~ ~1 ~ 0.4 0.4 0.4 1 15 force @a
#効果音再生
playsound minecraft:enchant.thorns.hit player @s ~ ~ ~
#MP処理
scoreboard players remove @s MP 10
#右クリック検知初期化
scoreboard players set @s R_click 0