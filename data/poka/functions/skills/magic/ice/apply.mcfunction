#>poka:skills/magic/ice/apply

##魔法・アイシクルを発動

#魔法召喚
summon area_effect_cloud ^ ^ ^20 {Particle:"block ice",ReapplicationDelay:5,Radius:12f,Duration:100,WaitTime:0,Effects:[{Id:2b,Amplifier:4b,Duration:200},{Id:7b,Amplifier:0b,Duration:1},{Id:8b,Amplifier:250b,Duration:200}]}

#MP処理
scoreboard players remove @s MP 30

#右クリック検知初期化
scoreboard players set @s R_click 0