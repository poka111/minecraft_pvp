##スナイパーの武器処理

#効果音を設定
execute as @a[scores={canSnipe = 1,sniper = 1}] run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1000
#武器を消去
execute as @a[scores={canSnipe = 1,sniper = 1}] run clear @a[scores={canSnipe = 1}] minecraft:spyglass
#5秒後に武器を再配布
execute as @a[scores={canSnipe = 1,sniper = 1}] run schedule function poka:give/give_snipe 100t append
#弾を生成
execute as @a[scores={canSnipe = 1,sniper = 1}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:[snipe1,kill]}
execute as @a[scores={canSnipe = 1,sniper = 1}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:[snipe2,kill]}
execute as @a[scores={canSnipe = 1,sniper = 1}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:[snipe3,kill]}
execute as @a[scores={canSnipe = 1,sniper = 1}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:[snipe4,kill]}
#弾を自身にテレポート
execute as @a[scores={canSnipe = 1,sniper = 1}] at @s run tp @e[tag=snipe1,distance=..1,sort=nearest,limit=1] ~ ~1.5 ~ ~ ~
execute as @a[scores={canSnipe = 1,sniper = 1}] at @s run tp @e[tag=snipe2,distance=..1,sort=nearest,limit=1] ~ ~1.5 ~ ~ ~
execute as @a[scores={canSnipe = 1,sniper = 1}] at @s run tp @e[tag=snipe3,distance=..1,sort=nearest,limit=1] ~ ~1.5 ~ ~ ~
execute as @a[scores={canSnipe = 1,sniper = 1}] at @s run tp @e[tag=snipe4,distance=..1,sort=nearest,limit=1] ~ ~1.5 ~ ~ ~
#弾に動力を設定
execute as @e[tag=snipe1] at @s run tp ^ ^ ^1
execute as @e[tag=snipe2] at @s run tp ^ ^ ^2
execute as @e[tag=snipe3] at @s run tp ^ ^ ^3
execute as @e[tag=snipe4] at @s run tp ^ ^ ^4
#弾にパーティクルを設定
execute as @e[tag=snipe1] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=snipe2] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=snipe3] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=snipe4] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 0 force
#ヒット時にサウンドを再生
execute as @e at @s positioned ~ ~1.5 ~ if entity @e[tag=snipe1,distance=..0.8] run playsound minecraft:entity.experience_orb.pickup master @a[scores={sniper = 1}] ~ ~ ~ 999
execute as @e at @s positioned ~ ~1.5 ~ if entity @e[tag=snipe2,distance=..1] run playsound minecraft:entity.experience_orb.pickup master @a[scores={sniper = 1}] ~ ~ ~ 999
execute as @e at @s positioned ~ ~1.5 ~ if entity @e[tag=snipe3,distance=..1] run playsound minecraft:entity.experience_orb.pickup master @a[scores={sniper = 1}] ~ ~ ~ 999
execute as @e at @s positioned ~ ~1.5 ~ if entity @e[tag=snipe4,distance=..1] run playsound minecraft:entity.experience_orb.pickup master @a[scores={sniper = 1}] ~ ~ ~ 999
#弾にダメージと当たり判定を設定
execute as @e at @s positioned ~ ~1.5 ~ if entity @e[tag=snipe1,distance=..0.8] run kill @s[tag=!respawn]
execute as @e at @s positioned ~ ~1.5 ~ if entity @e[tag=snipe2,distance=..1] run kill @s[tag=!respawn]
execute as @e at @s positioned ~ ~1.5 ~ if entity @e[tag=snipe3,distance=..1] run kill @s[tag=!respawn]
execute as @e at @s positioned ~ ~1.5 ~ if entity @e[tag=snipe4,distance=..1] run kill @s[tag=!respawn]
#スコアをリセット
execute as @a[scores={canSnipe = 1,sniper = 1}] run scoreboard players set @a[scores={canSnipe = 1}] canSnipe 0

#スナイパーの弾処理(飛距離150mに設定)
execute as @e[tag=kill] at @s unless entity @p[distance=..150] run kill @s