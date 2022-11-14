#着弾爆発

execute as @e[type=minecraft:arrow,nbt={CustomPotionEffects:[{Id:4}],inGround:1b}] at @s run summon creeper ~ ~ ~ {ExplosionRadius:4,Fuse:0,Invulnerable:1}
execute as @e[type=minecraft:arrow,nbt={CustomPotionEffects:[{Id:4}],inGround:true}] at @s run data merge entity @s {life:1200}

#大砲(pvpでは未使用)
execute as @e[type=minecraft:arrow,nbt={inGround:false,CustomPotionEffects:[{Id:1}]}] at @s run summon creeper ~ ~ ~ {ExplosionRadius:1,Fuse:0,ignited:true}
execute as @e[type=minecraft:arrow,nbt={CustomPotionEffects:[{Id:1}],inGround:true}] at @s run data merge entity @s {life:1200}

#矢の軌道上にクリーパーを召喚
execute as @e[type=minecraft:arrow,nbt={CustomPotionEffects:[{Id:5}],inGround:0b}] at @s run summon creeper ~ ~ ~ {NoGravity:0b,Glowing:0b,FallDistance:-250f,DeathLootTable:"0",NoAI:0b,CanPickUpLoot:0b,Health:1f,powered:1b,ExplosionRadius:2b,Fuse:500,ignited:0b,CustomName:'{"text":"空爆","color":"red","italic":true}',Attributes:[{Name:generic.movement_speed,Base:-100}]}
execute as @e[type=minecraft:arrow,nbt={CustomPotionEffects:[{Id:5}],inGround:true}] at @s run data merge entity @s {life:1200}

#雪玉グレネード
execute at @e[type=snowball] unless block ~ ~-1.2 ~ air run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:5,Fuse:0,Invulnerable:1}
execute at @e[type=snowball] unless block ~ ~-1.2 ~ air run kill @e[type=snowball,distance=..0.1]
execute at @e[type=snowball] unless block ~ ~1.2 ~ air run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:5,Fuse:0,Invulnerable:1}
execute at @e[type=snowball] unless block ~ ~1.2 ~ air run kill @e[type=snowball,distance=..0.1]
execute at @e[type=snowball] unless block ~ ~ ~-1.2 air run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:5,Fuse:0,Invulnerable:1}
execute at @e[type=snowball] unless block ~ ~ ~-1.2 air run kill @e[type=snowball,distance=..0.1]
execute at @e[type=snowball] unless block ~ ~ ~1.2 air run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:5,Fuse:0,Invulnerable:1}
execute at @e[type=snowball] unless block ~ ~ ~1.2 air run kill @e[type=snowball,distance=..0.1]
execute at @e[type=snowball] unless block ~1.2 ~ ~ air run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:5,Fuse:0,Invulnerable:1}
execute at @e[type=snowball] unless block ~1.2 ~ ~ air run kill @e[type=snowball,distance=..0.1]
execute at @e[type=snowball] unless block ~-1.2 ~ ~ air run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:5,Fuse:0,Invulnerable:1}
execute at @e[type=snowball] unless block ~-1.2 ~ ~ air run kill @e[type=snowball,distance=..0.1]

#ボマー奥義

##apply
execute as @a[scores={Bommer = 1,R_click = 1..}] run function poka:skills/ult/bommer

##奥義のtick実行の設定
#弾に動力を設定
execute as @e[tag=Bom] at @s run tp ^ ^ ^1
#パーティクルを設定
execute as @e[tag=Bom] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0 force
#弾道上に爆発(クリーパー)を生成
execute as @e[tag=Bom] at @s run summon creeper ~ ~ ~ {ExplosionRadius:9,Fuse:0,Invulnerable:1}
#ボマー奥義の距離設定(200mに設定)
execute as @e[tag=killBom] at @s unless entity @p[distance=..200] run kill @s


#ボムフレア(モデル:10)(モデル未作成のため、json未作成)
execute as @a[scores={skill_bombFrea = 1..}] run effect give @a[scores={skill_bombFrea = 1..}] minecraft:resistance 1 100 false
execute as @e[scores={skill_bombFrea=1..},type=minecraft:player] at @s run summon creeper ~ ~ ~ {Glowing:true,powered:true,ExplosionRadius:2,Fuse:0}
execute as @a[scores={skill_bombFrea = 1..}] run scoreboard players set @a[scores={skill_bombFrea = 1..}] skill_bombFrea 0