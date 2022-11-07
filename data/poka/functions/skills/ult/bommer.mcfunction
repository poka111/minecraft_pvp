#>poka:skills/ult/bommer

effect give @s minecraft:resistance 5 4
#音声処理
playsound minecraft:entity.lightning_bolt.impact master @s ~ ~ ~
#弾を生成
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:[Bom,killBom]}
#弾を自身にテレポート
tp @e[tag=Bom,distance=..1,sort=nearest,limit=1] ~ ~1.5 ~ ~ ~
#弾に動力を設定
execute as @e[tag=Bom] at @s run tp ^ ^ ^1
#パーティクルを設定
execute as @e[tag=Bom] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0 force
#弾道上に爆発(クリーパー)を生成
execute as @e[tag=Bom] at @s run summon creeper ~ ~ ~ {ExplosionRadius:9,Fuse:0,Invulnerable:1}
#武器を消去
clear @s minecraft:carrot_on_a_stick
#奥義を再使用不可に設定
scoreboard players set @s Gokubaku 9999
#右クリックのスコアをリセット
scoreboard players set @s R_click 0