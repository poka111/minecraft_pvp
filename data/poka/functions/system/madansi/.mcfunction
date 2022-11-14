
##魔弾士　武器処理
#音声処理
execute as @a[scores={Madansi = 1,R_click = 1..,MP = 3..}] run playsound minecraft:entity.lightning_bolt.impact master @a[scores={Madansi = 1,R_click = 1..,MP = 2..}] ~ ~ ~ 1000
#弾を生成
execute at @a[scores={Madansi = 1,R_click = 1..,MP = 3..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:[Madan,kill1]}
execute at @a[scores={Madansi = 1,R_click = 1..,MP = 3..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:[Madan2,kill1]}
#弾を自身にテレポート
execute as @a[scores={Madansi = 1,R_click = 1..,MP = 3..}] at @s run tp @e[tag=Madan,distance=..1,sort=nearest,limit=1] ~ ~1.5 ~ ~ ~
execute as @a[scores={Madansi = 1,R_click = 1..,MP = 3..}] at @s run tp @e[tag=Madan2,distance=..1,sort=nearest,limit=1] ~ ~1.5 ~ ~ ~
#弾に動力を設定
execute as @e[tag=Madan] at @s run tp ^ ^ ^1
execute as @e[tag=Madan2] at @s run tp ^ ^ ^2
#パーティクルを設定
execute as @e[tag=Madan] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=Madan2] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0 force
#弾が当たった際に、魔弾士にヒット音を再生
execute as @e[type=!minecraft:armor_stand] at @s positioned ~ ~1.5 ~ if entity @e[tag=Madan,distance=..0.9] run playsound minecraft:entity.experience_orb.pickup master @a[scores={Madansi = 1}] ~ ~ ~ 999
execute as @e[type=!minecraft:armor_stand] at @s positioned ~ ~1.5 ~ if entity @e[tag=Madan2,distance=..0.9] run playsound minecraft:entity.experience_orb.pickup master @a[scores={Madansi = 1}] ~ ~ ~ 99
#弾にダメージと当たり判定を設定
execute as @e[type=!minecraft:armor_stand] at @s positioned ~ ~1.5 ~ if entity @e[tag=Madan,distance=..0.9] run effect give @s minecraft:instant_damage 1 0
execute as @e[type=!minecraft:armor_stand] at @s positioned ~ ~1.5 ~ if entity @e[tag=Madan2,distance=..0.9] run effect give @s minecraft:instant_damage 1 0
#魔力を消費(消費魔力：3)
execute as @a[scores={Madansi = 1,R_click = 1..,MP = 3..}] at @s run scoreboard players remove @s MP 3
#右クリックのスコアをリセット
execute at @a[scores={Madansi = 1,R_click = 1..,MP = 3..}] run scoreboard players set @a[scores={Madansi = 1,R_click = 1..,MP = 3..}] R_click 0

##魔弾士MP上限設定(50)
execute as @a[scores={Madansi = 1,MP = 50..}] at @s run scoreboard players set @s MP 50

#魔弾士　魔弾距離設定(100mに設定)
execute as @e[tag=kill1] at @s unless entity @p[distance=..100] run kill @s

##奥義使用時のMP設定
execute as @a[scores={ULT_Madansi = 1}] at @s run scoreboard players set @s MP 50 

#魔力瓶(MP回復値：50)処理
execute as @a[scores={drink = 1..,Madansi = 1}] at @s run scoreboard players add @s MP 50
execute as @a[scores={drink = 1..,Madansi = 1}] run scoreboard players set @a[scores={drink = 1..}] drink 0