#スキル使用系の奥義のモデルは21に設定しています


#建築補助用スキル
#minecraft:minecraft:deepslate_bricks

#キツネ：上8(Y軸方向)マスに指定のアイテムを置く
execute as @e[type=fox] at @s run setblock ~ ~ ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~1 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~2 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~3 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~4 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~5 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~6 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~7 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~8 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~9 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~10 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~11 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~12 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~13 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~14 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~15 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~16 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~17 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~18 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~19 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~20 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~21 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~22 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~23 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~24 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~25 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~26 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~27 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~28 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~29 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~30 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~31 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~32 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~33 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~34 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~35 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~36 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~37 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~38 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~39 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~40 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~41 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~42 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~43 ~ minecraft:deepslate_bricks keep
execute as @e[type=fox] at @s run setblock ~ ~44 ~ minecraft:deepslate_bricks keep

kill @e[type=fox]

#ウィッチ：横8(Z軸方向)マスに指定のアイテムを置く
execute as @e[type=witch] at @s run setblock ~ ~ ~ minecraft:oak_wood keep
execute as @e[type=witch] at @s run setblock ~ ~ ~1 minecraft:oak_wood keep
execute as @e[type=witch] at @s run setblock ~ ~ ~2 minecraft:oak_wood keep
execute as @e[type=witch] at @s run setblock ~ ~ ~3 minecraft:oak_wood keep
execute as @e[type=witch] at @s run setblock ~ ~ ~4 minecraft:oak_wood keep
execute as @e[type=witch] at @s run setblock ~ ~ ~5 minecraft:oak_wood keep
execute as @e[type=witch] at @s run setblock ~ ~ ~6 minecraft:oak_wood keep
execute as @e[type=witch] at @s run setblock ~ ~ ~7 minecraft:oak_wood keep
kill @e[type=witch]

#ピグリン：縦8(X軸方向)マスに指定のアイテムを置く
execute as @e[type=piglin] at @s run setblock ~ ~ ~ minecraft:oak_wood keep
execute as @e[type=piglin] at @s run setblock ~1 ~ ~ minecraft:oak_wood keep
execute as @e[type=piglin] at @s run setblock ~2 ~ ~ minecraft:oak_wood keep
execute as @e[type=piglin] at @s run setblock ~3 ~ ~ minecraft:oak_wood keep
execute as @e[type=piglin] at @s run setblock ~4 ~ ~ minecraft:oak_wood keep
execute as @e[type=piglin] at @s run setblock ~5 ~ ~ minecraft:oak_wood keep
execute as @e[type=piglin] at @s run setblock ~6 ~ ~ minecraft:oak_wood keep
execute as @e[type=piglin] at @s run setblock ~7 ~ ~ minecraft:oak_wood keep
kill @e[type=piglin]

#最速で実行
kill @e[type=minecraft:firework_rocket]

effect give @a minecraft:saturation 3 100 true

#スキルのトリガーはadvancementで処理
#advancement→対応のfunction→スコア操作→skillSystemで効果を実行
#この流れを最終的にadvancement→対応のfunctionで、完結させ、skillSystemとスコア操作を用いない事で、動作を軽量化する
#ただし、自分以外の人に特定の効果を発動させるスキルに関しては、必ずスコア操作を必要とする.


#スキル：透明化(アサシン使用時の挙動処理) アサシンの場合は瞬歩の効果も乗る
execute as @a[scores={toumei = 1,Assassin = 1}] run scoreboard players set @a[scores={toumei = 1}] sneakTime 100
execute as @a[scores={toumei = 1,Assassin = 1,toumeisyunpo = 0}] run effect give @a[scores={toumei = 1,Assassin = 1,toumeisyunpo = 0}] minecraft:speed 4 3 true
execute as @a[scores={toumei = 1,Assassin = 1,toumeisyunpo = 0}] run scoreboard players set @a[scores={toumei = 1,Assassin = 1,toumeisyunpo = 0}] toumeisyunpo 1

#スキル透明化(その他の職業の挙動処理)
execute as @a[scores={toumei = 1,Assassin = 0}] run effect give @a[scores={toumei = 1,Assassin = 0}] minecraft:invisibility 1 0 true

#スキル：透明化(システム処理)(5秒間透明に設定)
execute as @a[scores={toumei = 1}] run schedule function poka:finish_toumei 80t append

#着弾爆発
execute as @e[type=minecraft:arrow,nbt={CustomPotionEffects:[{Id:4b}],inGround:1b}] at @s run summon creeper ~ ~ ~ {ExplosionRadius:2,Fuse:0,Invulnerable:1}
execute as @e[type=minecraft:arrow,nbt={CustomPotionEffects:[{Id:4b}],inGround:true}] at @s run data merge entity @s {life:1200}

#大砲(pvpでは未使用)
execute as @e[type=minecraft:arrow,nbt={inGround:false,CustomPotionEffects:[{Id:1b}]}] at @s run summon creeper ~ ~ ~ {ExplosionRadius:1,Fuse:0,ignited:true}
execute as @e[type=minecraft:arrow,nbt={CustomPotionEffects:[{Id:1b}],inGround:true}] at @s run data merge entity @s {life:1200}

#矢の軌道上にクリーパーを召喚
execute as @e[type=minecraft:arrow,nbt={CustomPotionEffects:[{Id:5b}],inGround:0b}] at @s run summon creeper ~ ~ ~ {NoGravity:0b,Glowing:0b,FallDistance:-250f,DeathLootTable:"0",NoAI:0b,CanPickUpLoot:0b,Health:1f,powered:1b,ExplosionRadius:2b,Fuse:500,ignited:0b,CustomName:'{"text":"空爆","color":"red","italic":true}',Attributes:[{Name:generic.movement_speed,Base:-100}]}
execute as @e[type=minecraft:arrow,nbt={CustomPotionEffects:[{Id:5b}],inGround:true}] at @s run data merge entity @s {life:1200}

#ボマー奥義

#無敵処理
execute as @a[scores={Bommer = 1,R_click = 1..}] run effect give @a[scores={Bommer = 1,R_click = 1..}] minecraft:resistance 5 4
#音声処理
execute as @a[scores={Bommer = 1,R_click = 1..}] run playsound minecraft:entity.lightning_bolt.impact master @a[scores={Bommer = 1,R_click = 1..}] ~ ~ ~ 1000
#弾を生成
execute at @a[scores={Bommer = 1,R_click = 1..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:[Bom,killBom]}
#弾を自身にテレポート
execute as @a[scores={Bommer = 1,R_click = 1..}] at @s run tp @e[tag=Bom,distance=..1,sort=nearest,limit=1] ~ ~1.5 ~ ~ ~
#弾に動力を設定
execute as @e[tag=Bom] at @s run tp ^ ^ ^1
#パーティクルを設定
execute as @e[tag=Bom] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0 force
#弾道上に爆発(クリーパー)を生成
execute as @e[tag=Bom] at @s run summon creeper ~ ~ ~ {ExplosionRadius:9,Fuse:0,Invulnerable:1}
#武器を消去
execute as @a[scores={Bommer = 1,R_click = 1..}] run clear @a[scores={Bommer = 1,R_click = 1..}] minecraft:carrot_on_a_stick
#奥義を再使用不可に設定
execute at @a[scores={Bommer = 1,R_click = 1..}] run scoreboard players set @a[scores={Bommer = 1,R_click = 1..}] Gokubaku 9999
#右クリックのスコアをリセット
execute at @a[scores={Bommer = 1,R_click = 1..}] run scoreboard players set @a[scores={Bommer = 1,R_click = 1..}] R_click 0

#ボマー奥義の距離設定(200mに設定)
execute as @e[tag=killBom] at @s unless entity @p[distance=..200] run kill @s


#ボムフレア(モデル:10)(モデル未作成のため、json未作成)
execute as @a[scores={skill_bombFrea = 1..}] run effect give @a[scores={skill_bombFrea = 1..}] minecraft:resistance 1 100 false
execute as @e[scores={skill_bombFrea=1..},type=minecraft:player] at @s run summon creeper ~ ~ ~ {Glowing:true,powered:true,ExplosionRadius:2,Fuse:0}
execute as @a[scores={skill_bombFrea = 1..}] run scoreboard players set @a[scores={skill_bombFrea = 1..}] skill_bombFrea 0


#魔法：サンダー
execute at @a[scores={thunder = 1,R_click = 1..,MP = 15..}] run function poka:thunder
execute as @a[scores={thunder = 1,R_click = 1..,MP = 15..}] run clear @a[scores={thunder = 1,R_click = 1..,MP = 15..}] nether_star 15
execute at @a[scores={thunder = 1,R_click = 1..}] run scoreboard players set @a[scores={thunder = 1,R_click = 1..}] R_click 0


#魔法：エクスプロージョン
execute at @a[scores={explo = 1,R_click = 1..,MP = 25..}] run summon creeper ^ ^ ^15 {ExplosionRadius:4,Fuse:0,Invulnerable:1}
execute at @a[scores={explo = 1,R_click = 1..,MP = 25..}] run summon creeper ^7 ^ ^15 {ExplosionRadius:3,Fuse:0,Invulnerable:1}
execute at @a[scores={explo = 1,R_click = 1..,MP = 25..}] run summon creeper ^-7 ^ ^15 {ExplosionRadius:3,Fuse:0,Invulnerable:1}
execute as @a[scores={explo = 1,R_click = 1..,MP = 25..}] run clear @a[scores={explo = 1,R_click = 1..,MP = 25..}] nether_star 25
execute at @a[scores={explo = 1,R_click = 1..}] run scoreboard players set @a[scores={explo = 1,R_click = 1..}] R_click 0

#魔法：アイシクル
execute at @a[scores={ice = 1,R_click = 1..,MP = 15..}] run summon area_effect_cloud ^ ^ ^20 {Particle:"block ice",ReapplicationDelay:5,Radius:12f,Duration:100,WaitTime:0,Effects:[{Id:2b,Amplifier:4b,Duration:200},{Id:7b,Amplifier:0b,Duration:1},{Id:8b,Amplifier:250b,Duration:200}]}
execute as @a[scores={ice = 1,R_click = 1..,MP = 15..}] run clear @a[scores={ice = 1,R_click = 1..,MP = 15..}] nether_star 15
execute at @a[scores={ice = 1,R_click = 1..}] run scoreboard players set @a[scores={ice = 1,R_click = 1..}] R_click 0

#魔法：ヒーリング
execute as @a[scores={healM = 1,R_click = 1..,MP = 10..}] run effect give @a[scores={magician = 1}] minecraft:instant_health 1 1
execute as @a[scores={healM = 1,R_click = 1..,MP = 10..}] at @s run particle minecraft:heart ~ ~1 ~ 0.4 0.4 0.4 1 15 force @a
execute as @a[scores={healM = 1,R_click = 1..,MP = 10..}] at @s run playsound minecraft:enchant.thorns.hit player @a[scores={healM = 1,R_click = 1..,MP = 10..}] ~ ~ ~ 999
execute as @a[scores={healM = 1,R_click = 1..,MP = 10..}] run clear @a[scores={healM = 1,R_click = 1..,MP = 10..}] nether_star 10
execute as @a[scores={healM = 1,R_click = 1..}] run scoreboard players set @a[scores={healM = 1,R_click = 1..}] R_click 0

#魔法：バーストエクスプロージョン
function poka:burstexplo

#MP全消費
execute at @a[scores={burstexplo = 1,R_click = 1..}] run clear @a[scores={burstexplo = 1,R_click = 1..}] nether_star

#魔法師の場合のみ通常発動の魔法に切り替える(changeMagic → 0)
execute at @a[scores={magician = 1,burstexplo = 1,R_click = 1..}] run scoreboard players set @a[scores={magician = 1,burstexplo = 1,R_click = 1..}] changeMagic 0
execute at @a[scores={magician = 1,burstexplo = 1,R_click = 1..}] run scoreboard players set @a[scores={magician = 1,burstexplo = 1,R_click = 1..}] burstexplo 9999
execute at @a[scores={burstexplo = 9999}] run scoreboard players set @a[scores={burstexplo = 9999}] R_click 0
execute at @a[scores={burstexplo = 9999}] run scoreboard players set burstexplo 10000

#魔法切り替え(サンダー)
execute as @a[scores={magician = 1,changeMagic = 0}] run scoreboard players set @a[scores={magician = 1,changeMagic = 0}] thunder 1
execute as @a[scores={magician = 1,changeMagic = 0}] run scoreboard players set @a[scores={magician = 1,changeMagic = 0}] explo 0
execute as @a[scores={magician = 1,changeMagic = 0}] run scoreboard players set @a[scores={magician = 1,changeMagic = 0}] ice 0
#再配布
execute as @a[scores={magician = 1,healM = 1,changeMagic = 0}] at @s run playsound minecraft:block.enchantment_table.use player @a[scores={magician = 1,healM = 1,changeMagic = 0}] ~ ~ ~ 900
execute as @a[scores={magician = 1,healM = 1,changeMagic = 0}] run give @a[scores={magician = 1}] minecraft:drowned_spawn_egg{CustomModelData:1,EntityTag:{id:"minecraft:slime",DeathTime:19,DeathLootTable:"0",Silent:1b,Invulnerable:1b,NoAI:1b,Size:0,CustomName:"\"魔法切り替え\"",CustomNameVisible:0},display:{Name:"{\"text\":\"魔法切り替え\",\"color\":\"gold\"}",Lore:['[{"text":"発動する魔法を切り替える"}]']}} 1

execute as @a[scores={magician = 1,changeMagic = 0}] run scoreboard players set @a[scores={magician = 1,changeMagic = 0}] healM 0
execute as @a[scores={thunder = 1}] run title @a[scores={thunder = 1}] actionbar {"text":"発動魔法：サンダー(消費MP:15)","color":"yellow"}

#魔法切り替え(エクスプロージョン)
execute as @a[scores={magician = 1,changeMagic = 1}] run scoreboard players set @a[scores={magician = 1,changeMagic = 1}] explo 1
#再配布
execute as @a[scores={magician = 1,thunder = 1,changeMagic = 1}] at @s run playsound minecraft:block.enchantment_table.use player @a[scores={magician = 1,thunder = 1,changeMagic = 1}] ~ ~ ~ 900
execute as @a[scores={magician = 1,thunder = 1,changeMagic = 1}] run give @a[scores={magician = 1}] minecraft:drowned_spawn_egg{CustomModelData:1,EntityTag:{id:"minecraft:slime",DeathTime:19,DeathLootTable:"0",Silent:1b,Invulnerable:1b,NoAI:1b,Size:0,CustomName:"\"魔法切り替え\"",CustomNameVisible:0},display:{Name:"{\"text\":\"魔法切り替え\",\"color\":\"gold\"}",Lore:['[{"text":"発動する魔法を切り替える"}]']}} 1
execute as @a[scores={magician = 1,changeMagic = 1}] run scoreboard players set @a[scores={magician = 1,changeMagic = 1}] thunder 0
execute as @a[scores={magician = 1,changeMagic = 1}] run scoreboard players set @a[scores={magician = 1,changeMagic = 1}] ice 0
execute as @a[scores={magician = 1,changeMagic = 1}] run scoreboard players set @a[scores={magician = 1,changeMagic = 1}] healM 0
execute as @a[scores={explo = 1}] run title @a[scores={explo = 1}] actionbar {"text":"発動魔法：エクスプロージョン(消費MP:25)","color":"light_purple"}

#魔法切り替え(アイシクル)
execute as @a[scores={magician = 1,changeMagic = 2}] run scoreboard players set @a[scores={magician = 1,changeMagic = 2}] ice 1
#再配布
execute as @a[scores={magician = 1,explo = 1,changeMagic = 2}] at @s run playsound minecraft:block.enchantment_table.use player @a[scores={magician = 1,explo = 1,changeMagic = 2}] ~ ~ ~ 900
execute as @a[scores={magician = 1,explo = 1,changeMagic = 2}] run give @a[scores={magician = 1}] minecraft:drowned_spawn_egg{CustomModelData:1,EntityTag:{id:"minecraft:slime",DeathTime:19,DeathLootTable:"0",Silent:1b,Invulnerable:1b,NoAI:1b,Size:0,CustomName:"\"魔法切り替え\"",CustomNameVisible:0},display:{Name:"{\"text\":\"魔法切り替え\",\"color\":\"gold\"}",Lore:['[{"text":"発動する魔法を切り替える"}]']}} 1
execute as @a[scores={magician = 1,changeMagic = 2}] run scoreboard players set @a[scores={magician = 1,changeMagic = 2}] explo 0
execute as @a[scores={magician = 1,changeMagic = 2}] run scoreboard players set @a[scores={magician = 1,changeMagic = 2}] thunder 0
execute as @a[scores={magician = 1,changeMagic = 2}] run scoreboard players set @a[scores={magician = 1,changeMagic = 2}] healM 0
execute as @a[scores={ice = 1}] run title @a[scores={ice = 1}] actionbar {"text":"発動魔法：アイシクル(消費MP:15)","color":"blue"}

#魔法切り替え(ヒーリング)
execute as @a[scores={magician = 1,changeMagic = 3}] run scoreboard players set @a[scores={magician = 1,changeMagic = 3}] healM 1
#再配布
execute as @a[scores={magician = 1,ice = 1,changeMagic = 3}] at @s run playsound minecraft:block.enchantment_table.use player @a[scores={magician = 1,ice = 1,changeMagic = 3}] ~ ~ ~ 900
execute as @a[scores={magician = 1,ice = 1,changeMagic = 3}] run give @a[scores={magician = 1}] minecraft:drowned_spawn_egg{CustomModelData:1,EntityTag:{id:"minecraft:slime",DeathTime:19,DeathLootTable:"0",Silent:1b,Invulnerable:1b,NoAI:1b,Size:0,CustomName:"\"魔法切り替え\"",CustomNameVisible:0},display:{Name:"{\"text\":\"魔法切り替え\",\"color\":\"gold\"}",Lore:['[{"text":"発動する魔法を切り替える"}]']}} 1
execute as @a[scores={magician = 1,changeMagic = 3}] run scoreboard players set @a[scores={magician = 1,changeMagic = 3}] ice 0
execute as @a[scores={magician = 1,changeMagic = 3}] run scoreboard players set @a[scores={magician = 1,changeMagic = 3}] thunder 0
execute as @a[scores={magician = 1,changeMagic = 3}] run scoreboard players set @a[scores={magician = 1,changeMagic = 3}] explo 0
execute as @a[scores={healM = 1}] run title @a[scores={healM = 1}] actionbar {"text":"発動魔法：ヒーリング(消費MP:10)","color":"red"}

#魔法切り替え(奥義：バーストエクスプロージョン)
execute as @a[scores={magician = 1,ULT_burst = 1}] run title @a title {"text":"魔力が集まっている気がする...","color":"dark_purple"}
execute as @a[scores={magician = 1,ULT_burst = 1}] run scoreboard players set @a[scores={magician = 1,ULT_burst = 1}] healM 0
execute as @a[scores={magician = 1,ULT_burst = 1}] run scoreboard players set @a[scores={magician = 1,ULT_burst = 1}] ice 0
execute as @a[scores={magician = 1,ULT_burst = 1}] run scoreboard players set @a[scores={magician = 1,ULT_burst = 1}] thunder 0
execute as @a[scores={magician = 1,ULT_burst = 1}] run scoreboard players set @a[scores={magician = 1,ULT_burst = 1}] explo 0
execute as @a[scores={magician = 1,ULT_burst = 1}] run scoreboard players set @a[scores={magician = 1,ULT_burst = 1}] changeMagic -999
execute as @a[scores={magician = 1,ULT_burst = 1}] run scoreboard players set @a[scores={magician = 1,ULT_burst = 1}] burstexplo 1
#再度切り替え使用不可に設定
execute as @a[scores={magician = 1,ULT_burst = 1}] run scoreboard players set @a[scores={magician = 1,ULT_burst = 1}] ULT_burst 9999
execute as @a[scores={burstexplo = 1}] run title @a[scores={burstexplo = 1}] actionbar {"text":"発動魔法：神大魔法「バーストエクスプロージョン」(消費MP:全て)","color":"dark_purple"}

#魔法切り替え(ヒーリング→サンダーに初期化)
execute as @a[scores={magician = 1,changeMagic = 4..}] run scoreboard players set @a[scores={magician = 1,changeMagic = 4..}] changeMagic 0

#魔力瓶(MP回復値：50)処理
execute at @a[scores={drink = 1..,magician = 1}] run give @a[scores={magician = 1}] minecraft:nether_star{display:{Name:"\"魔力\""}} 50
execute at @a[scores={drink = 1..,magician = 1}] run scoreboard players set @a[scores={drink = 1..}] drink 0

execute at @a[scores={drink = 1..,Madansi = 1}] run give @a[scores={Madansi = 1}] minecraft:nether_star{display:{Name:"\"魔力\""}} 50
execute at @a[scores={drink = 1..,Madansi = 1}] run scoreboard players set @a[scores={drink = 1..}] drink 0


##鬼人化系のスキルは、実装がかなりややこしいので、advancementで処理は行わない。
#鬼人化・速(無限スキル)(モデル:17)
#再配布処理
execute as @a[scores={skill_kizinka_soku = 1..},nbt={SelectedItem:{id:"minecraft:firework_rocket",tag:{CustomModelData:17}}}] run item replace entity @a[scores={skill_kizinka_soku = 1..}] weapon.mainhand with minecraft:firework_rocket{CustomModelData:17,display:{Name:"{\"text\":\"鬼人化・速【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に速度を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
execute as @a[scores={skill_kizinka_soku = 1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:firework_rocket",tag:{CustomModelData:17}}]}] run item replace entity @a[scores={skill_kizinka_soku = 1..}] weapon.offhand with minecraft:firework_rocket{CustomModelData:17,display:{Name:"{\"text\":\"鬼人化・速【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に速度を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
#スキル処理
execute as @a[scores={skill_kizinka_soku = 1..,used_soku = 0}] run effect give @a[scores={skill_kizinka_soku = 1..,used_soku = 0}] minecraft:speed 10 30 true
execute as @a[scores={skill_kizinka_soku = 1..,used_soku = 0}] run scoreboard players set #command delay_kizinka_soku 200
execute as @a[scores={skill_kizinka_soku = 1..,used_soku = 0}] at @s run playsound minecraft:item.totem.use player @a[scores={skill_kizinka_soku = 1..}] ~ ~ ~ 999
execute as @a[scores={skill_kizinka_soku = 1..,used_soku = 0}] run scoreboard players set @a[scores={skill_kizinka_soku = 1..,used_soku = 0}] used_soku 1
execute as @a[scores={skill_kizinka_soku = 1..,used_soku = 1}] run scoreboard players set @a[scores={skill_kizinka_soku = 1..,used_soku = 1}] skill_kizinka_soku 0
#遅延デバフ処理
execute if score #command delay_kizinka_soku matches 0.. run scoreboard players remove #command delay_kizinka_soku 1
execute if score #command delay_kizinka_soku matches 0 run effect give @a[scores={used_soku = 1}] minecraft:slowness 10 30 false
execute if score #command delay_kizinka_soku matches 0 run scoreboard players set @a used_soku 0

#鬼人化・剛(無限スキル)(モデル:18)
#再配布処理
execute as @a[scores={skill_kizinka_gou = 1..},nbt={SelectedItem:{id:"minecraft:firework_rocket",tag:{CustomModelData:18}}}] run item replace entity @a[scores={skill_kizinka_gou = 1..}] weapon.mainhand with minecraft:firework_rocket{CustomModelData:18,display:{Name:"{\"text\":\"鬼人化・剛【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に被ダメージを60%カットする。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
execute as @a[scores={skill_kizinka_gou = 1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:firework_rocket",tag:{CustomModelData:18}}]}] run item replace entity @a[scores={skill_kizinka_gou = 1..}] weapon.offhand with minecraft:firework_rocket{CustomModelData:18,display:{Name:"{\"text\":\"鬼人化・剛【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に被ダメージを60%カットする。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
#スキル処理
execute as @a[scores={skill_kizinka_gou = 1..,used_gou = 0}] run effect give @a[scores={skill_kizinka_gou = 1..,used_gou = 0}] minecraft:resistance 10 2 true
execute as @a[scores={skill_kizinka_gou = 1..,used_gou = 0}] run scoreboard players set #command delay_kizinka_gou 200
execute as @a[scores={skill_kizinka_gou = 1..,used_gou = 0}] at @s run playsound minecraft:item.totem.use player @a[scores={skill_kizinka_gou = 1..}] ~ ~ ~ 999
execute as @a[scores={skill_kizinka_gou = 1..,used_gou = 0}] run scoreboard players set @a[scores={skill_kizinka_gou = 1..,used_gou = 0}] used_gou 1
execute as @a[scores={skill_kizinka_gou = 1..,used_gou = 1}] run scoreboard players set @a[scores={skill_kizinka_gou = 1..,used_gou = 1}] skill_kizinka_gou 0
#遅延デバフ処理
execute if score #command delay_kizinka_gou matches 0.. run scoreboard players remove #command delay_kizinka_gou 1
execute if score #command delay_kizinka_gou matches 0 run effect give @a[scores={used_gou = 1}] minecraft:nausea 10 5 true
execute if score #command delay_kizinka_gou matches 0 run effect give @a[scores={used_gou = 1}] minecraft:blindness 10 5 true
execute if score #command delay_kizinka_gou matches 0 run effect give @a[scores={used_gou = 1}] minecraft:poison 10 0 true
execute if score #command delay_kizinka_gou matches 0 run effect give @a[scores={used_gou = 1}] minecraft:glowing 5 0 true
execute if score #command delay_kizinka_gou matches 0 run scoreboard players set @a used_gou 0

#鬼人化・力(無限スキル)(モデル:19)
#再配布処理
execute as @a[scores={skill_kizinka_tikara = 1..},nbt={SelectedItem:{id:"minecraft:firework_rocket",tag:{CustomModelData:19}}}] run item replace entity @a[scores={skill_kizinka_tikara = 1..}] weapon.mainhand with minecraft:firework_rocket{CustomModelData:19,display:{Name:"{\"text\":\"鬼人化・力【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に攻撃力を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
execute as @a[scores={skill_kizinka_tikara = 1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:firework_rocket",tag:{CustomModelData:19}}]}] run item replace entity @a[scores={skill_kizinka_tikara = 1..}] weapon.offhand with minecraft:firework_rocket{CustomModelData:19,display:{Name:"{\"text\":\"鬼人化・力【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に攻撃力を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
#スキル処理
execute as @a[scores={skill_kizinka_tikara = 1..,used_riki = 0}] run effect give @a[scores={skill_kizinka_tikara = 1..,used_riki = 0}] minecraft:strength 10 2 true
execute as @a[scores={skill_kizinka_tikara = 1..,used_riki = 0}] run scoreboard players set #command delay_kizinka_tikara 200
execute as @a[scores={skill_kizinka_tikara = 1..,used_riki = 0}] at @s run playsound minecraft:item.totem.use player @a[scores={skill_kizinka_tikara = 1..,used_riki = 0}] ~ ~ ~ 999
execute as @a[scores={skill_kizinka_tikara = 1..,used_riki = 0}] run scoreboard players set @a[scores={skill_kizinka_tikara = 1..,used_riki = 0}] used_riki 1
execute as @a[scores={skill_kizinka_tikara = 1..,used_riki = 1}] run scoreboard players set @a[scores={skill_kizinka_tikara = 1..,used_riki = 1}] skill_kizinka_tikara 0

#遅延デバフ処理
execute if score #command delay_kizinka_tikara matches 0.. run scoreboard players remove #command delay_kizinka_tikara 1
execute if score #command delay_kizinka_tikara matches 0 run effect give @a[scores={used_riki = 1}] minecraft:weakness 15 100 true
execute if score #command delay_kizinka_tikara matches 0 run scoreboard players set @a used_riki 0

#鬼人化・跳(無限スキル)(モデル:20)
#再配布処理
execute as @a[scores={skill_kizinka_tyou = 1..},nbt={SelectedItem:{id:"minecraft:firework_rocket",tag:{CustomModelData:20}}}] run item replace entity @a[scores={skill_kizinka_tyou = 1..}] weapon.mainhand with minecraft:firework_rocket{CustomModelData:20,display:{Name:"{\"text\":\"鬼人化・跳【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に跳躍力を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
execute as @a[scores={skill_kizinka_tyou = 1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:firework_rocket",tag:{CustomModelData:20}}]}] run item replace entity @a[scores={skill_kizinka_tyou = 1..}] weapon.offhand with minecraft:firework_rocket{CustomModelData:20,display:{Name:"{\"text\":\"鬼人化・跳【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に跳躍力を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
#スキル処理
execute as @a[scores={skill_kizinka_tyou = 1..,used_tyou = 0}] run effect give @a[scores={skill_kizinka_tyou = 1..,used_tyou = 0}] minecraft:jump_boost 10 20 true
execute as @a[scores={skill_kizinka_tyou = 1..,used_tyou = 0}] run scoreboard players set #command delay_kizinka_tyou 200
execute as @a[scores={skill_kizinka_tyou = 1..,used_tyou = 0}] at @s run playsound minecraft:item.totem.use player @a[scores={skill_kizinka_tyou = 1..}] ~ ~ ~ 999
execute as @a[scores={skill_kizinka_tyou = 1..,used_tyou = 0}] run scoreboard players set @a[scores={skill_kizinka_tyou = 1..}] used_tyou 1
execute as @a[scores={skill_kizinka_tyou = 1..,used_tyou = 1}] run scoreboard players set @a[scores={skill_kizinka_tyou = 1..}] skill_kizinka_tyou 0
#遅延デバフ処理
execute if score #command delay_kizinka_tyou matches 0.. run scoreboard players remove #command delay_kizinka_tyou 1
execute if score #command delay_kizinka_tyou matches 0 run effect give @a[scores={used_tyou = 1}] minecraft:jump_boost 15 250 false
execute if score #command delay_kizinka_tyou matches 0 run effect give @a[scores={used_tyou = 1}] minecraft:slowness 15 2 true
execute if score #command delay_kizinka_tyou matches 0 run effect give @a[scores={used_tyou = 1}] minecraft:slow_falling 15 0 true
execute if score #command delay_kizinka_tyou matches 0 run scoreboard players set @a used_tyou 0

#奥義：鬼神化
#一度だけ実行
execute as @a[scores={ULT_kizinka = 1}] run title @a title "奥義：鬼神化を発動しました"
execute as @a[scores={ULT_kizinka = 1}] run scoreboard players set #command delay_ULT_kizinka 600
execute as @a[scores={ULT_kizinka = 1}] run scoreboard players set @a[scores={ULT_kizinka = 1}] ULT_kizinka 2
#上記3つ実行後、ディレイ終了まで常に実行
execute as @a[scores={ULT_kizinka = 2}] run effect give @a[scores={ULT_kizinka = 2}] minecraft:strength 1 10 true
execute as @a[scores={ULT_kizinka = 2}] run effect give @a[scores={ULT_kizinka = 2}] minecraft:speed 1 10 true
execute as @a[scores={ULT_kizinka = 2}] run effect give @a[scores={ULT_kizinka = 2}] minecraft:instant_health 1 0 true
execute as @a[scores={ULT_kizinka = 2}] run effect give @a[scores={ULT_kizinka = 2}] minecraft:jump_boost 1 20 true
execute as @a[scores={ULT_kizinka = 2}] run effect give @a[scores={ULT_kizinka = 0}] minecraft:glowing 1 0 true
execute as @a[scores={ULT_kizinka = 2}] run effect give @a[scores={ULT_kizinka = 2}] minecraft:strength 1 10 true
#遅延デバフ処理
execute if score #command delay_ULT_kizinka matches 0.. run scoreboard players remove #command delay_ULT_kizinka 1
execute if score #command delay_ULT_kizinka matches 0 run effect clear @a[scores={ULT_kizinka = 2}]
execute if score #command delay_ULT_kizinka matches 0 run scoreboard players set @a[scores={ULT_kizinka = 2}] ULT_kizinka 9999
execute if score #command delay_ULT_kizinka matches 0 run effect give @a[scores={ULT_kizinka = 9999}] minecraft:slowness 30 100 false
execute if score #command delay_ULT_kizinka matches 0 run effect give @a[scores={ULT_kizinka = 9999}] minecraft:jump_boost 30 250 false
execute if score #command delay_ULT_kizinka matches 0 run effect give @a[scores={ULT_kizinka = 9999}] minecraft:glowing 30 100 false
execute if score #command delay_ULT_kizinka matches 0 run effect give @a[scores={ULT_kizinka = 9999}] minecraft:weakness 30 100 false
execute if score #command delay_ULT_kizinka matches 0 run effect give @a[scores={ULT_kizinka = 9999}] minecraft:poison 30 30 false
execute if score #command delay_ULT_kizinka matches 0 run effect give @a[scores={ULT_kizinka = 9999}] minecraft:blindness 30 100 false
execute if score #command delay_ULT_kizinka matches 0 run effect give @a[scores={ULT_kizinka = 9999}] minecraft:nausea 30 100 false
execute if score #command delay_ULT_kizinka matches 0 run effect give @a[scores={ULT_kizinka = 9999}] minecraft:night_vision 30 100 false
#初期化するまで再使用不可
execute if score #command delay_ULT_kizinka matches 0 run scoreboard players set @a[scores={ULT_kizinka = 9999}] ULT_kizinka 10000

#奥義：虚視無双
#一度だけ実行
execute as @a[scores={ULT_kokusimusou = 1}] run scoreboard players set #command delay_mahi 300
execute as @a[scores={ULT_kokusimusou = 1}] run title @a title "奥義：虚視無双を発動しました"
execute as @a[scores={ULT_kokusimusou = 1}] run effect give @a[scores={ULT_kokusimusou = 0}] minecraft:slowness 15 100 true
execute as @a[scores={ULT_kokusimusou = 1}] run effect give @a[scores={ULT_kokusimusou = 0}] minecraft:jump_boost 15 250 true
execute as @a[scores={ULT_kokusimusou = 1}] run effect give @a[scores={ULT_kokusimusou = 0}] minecraft:glowing 15 0 true
execute as @a[scores={ULT_kokusimusou = 1}] run effect give @a[scores={ULT_kokusimusou = 0}] minecraft:weakness 15 100 true
execute as @a[scores={ULT_kokusimusou = 1}] run gamemode adventure @a[scores={ULT_kokusimusou = 0}]
execute as @a[scores={ULT_kokusimusou = 1}] run scoreboard players set @a[scores={ULT_kokusimusou = 1}] ULT_kokusimusou 2
#上記3つ実行後、ディレイ終了まで常に実行
execute as @a[scores={ULT_kokusimusou = 2}] run effect give @a[scores={ULT_kokusimusou = 2}] minecraft:speed 1 10 true
execute as @a[scores={ULT_kokusimusou = 2}] run scoreboard players set @a[scores={ULT_kokusimusou = 2}] sneakTime 10
execute if score #command delay_mahi matches 0.. run scoreboard players remove #command delay_mahi 1
#ディレイ終了後の処理
execute if score #command delay_mahi matches 0 run gamemode survival @a[scores={ULT_kokusimusou = 0}]
execute if score #command delay_mahi matches 0 run scoreboard players set @a[scores={ULT_kokusimusou = 2}] ULT_kokusimusou 9999

#奥義：四線夜纏一弓
execute as @a[scores={ULT_sisen = 1}] run effect give @a[scores={ULT_sisen = 1}] minecraft:absorption 180 15 true
execute as @a[scores={ULT_sisen = 1}] run scoreboard players set #command delay_sisen 300
execute as @a[scores={ULT_sisen = 1}] run title @a title "奥義：四線夜纏一弓を発動しました"
scoreboard players set @a[scores={ULT_sisen = 1}] ULT_sisen 9999
#デバフ処理
execute if score #command delay_sisen matches 0.. run scoreboard players remove #command delay_sisen 1
execute if score #command delay_sisen matches 0.. run effect give @a[scores={ULT_sisen = 0}] minecraft:glowing 1 0 true
execute if score #command delay_sisen matches 0.. run effect give @a[scores={ULT_sisen = 0}] minecraft:levitation 1 0 true
execute if score #command delay_sisen matches 0.. run effect give @a[scores={ULT_sisen = 0}] minecraft:blindness 1 0 true
execute if score #command delay_sisen matches 0.. run effect give @a[scores={ULT_sisen = 0}] minecraft:slow_falling 1 0 true
execute if score #command delay_sisen matches 0.. run effect give @a[scores={ULT_sisen = 0}] minecraft:slowness 1 100 true

#奥義：鋼強創体(こうきょうそうたい)(剣士の奥義)
execute as @a[scores={ULT_Kensi = 1}] run effect give @a[scores={ULT_Kensi = 1}] minecraft:resistance 25 100 true
execute as @a[scores={ULT_Kensi = 1}] run playsound minecraft:entity.ender_dragon.ambient player @a[scores={ULT_Kensi = 1}] ~ ~ ~ 999 1
execute as @a[scores={ULT_Kensi = 1}] run title @a title "奥義：鋼強創体を発動しました"
execute as @a[scores={ULT_Kensi = 1}] run scoreboard players set @a[scores={ULT_Kensi = 1}] ULT_Kensi 9999

#奥義：無限魔装弾(魔弾士の奥義)ULT_Madansi = 0
execute as @a[scores={ULT_Madansi = 1}] run schedule function poka:finish_ult_madansi 600t
execute as @a[scores={ULT_Madansi = 1}] run scoreboard players set @a[scores={ULT_Madansi = 1}] ULT_Madansi 2
execute as @a[scores={ULT_Madansi = 2}] run give @a[scores={ULT_Madansi = 2}] minecraft:nether_star{display:{Name:"\"魔力\""}} 2

##システムスキル：食料回復は廃止
#システムスキル：食料回復(モデル:22)
#使用時にシステムスキル再配布
#execute as @a[scores={system_syokuryou = 1..}] run give @a[scores={system_syokuryou = 1..}] minecraft:firework_rocket{CustomModelData:22,display:{Name:"{\"text\":\"食料回復\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"使用すると食料ゲージを回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 1
#システムスキルの処理
#execute as @a[scores={system_syokuryou = 1..}] run effect give @a[scores={system_syokuryou = 1..}] minecraft:saturation 999999 10 true
#execute as @a[scores={system_syokuryou = 1..}] run scoreboard players set @a[scores={system_syokuryou = 1..}] system_syokuryou 0


#--------------------パッシブスキル---------------------------------
effect give @a[scores={Kenshi = 1}] minecraft:resistance 1 0 true
effect give @a[scores={sneakTime=1..,Assassin = 1}] minecraft:invisibility 1 1 true
effect clear @a[scores={sneakTime=0,Assassin = 1}] minecraft:invisibility
execute as @a[scores={sneakTime=1..,Assassin = 1}] run scoreboard players set @a[scores={sneakTime=1..,Assassin = 1}] sneakTime 0

#--------------------スキルに直接作用しないシステム------------------

#魔法師MP上限設定
execute as @a[scores={magician = 1,MP = 100..}] run clear @a[scores={magician = 1,MP = 101..}] nether_star 1

#全ての着弾した矢を削除(エンティティデータを変更)
execute as @e[type=minecraft:arrow,nbt={inGround:true}] at @s run data merge entity @s {life:1200}

#暗殺者のダガーHP更新処理
#effect give @a[nbt={SelectedItem:{id:"minecraft:netherite_sword",tag:{display:{Name:"\"†暗殺者のダガー†\"",Lore:["\"暗殺者が愛用している暗殺用のダガー\""]}}}}] minecraft:instant_health 1 1 true

#殲滅弓ヘカートⅡHP更新＆発光ジャンプ不可付与処理(メインハンド)
#effect give @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:"\"殲滅弓へカートⅡ\"",Lore:["\"敵を消し去る弓\""]}}}}] minecraft:glowing 1 0 true
#effect give @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:"\"殲滅弓へカートⅡ\"",Lore:["\"敵を消し去る弓\""]}}}}] minecraft:jump_boost 1 250 false
#effect give @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:"\"殲滅弓へカートⅡ\"",Lore:["\"敵を消し去る弓\""]}}}}] minecraft:instant_health 1 1 false

#殲滅弓ヘカートⅡHP更新＆発光ジャンプ不可付与処理(オフハンド)
#effect give @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow",tag:{display:{Name:"\"殲滅弓へカートⅡ\"",Lore:["\"敵を消し去る弓\""]}}}]}] minecraft:glowing 1 0 true
#effect give @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow",tag:{display:{Name:"\"殲滅弓へカートⅡ\"",Lore:["\"敵を消し去る弓\""]}}}]}] minecraft:jump_boost 1 250 true
#effect give @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow",tag:{display:{Name:"\"殲滅弓へカートⅡ\"",Lore:["\"敵を消し去る弓\""]}}}]}] minecraft:instant_health 1 0 true

#デバック用の町のプレイヤーカウント
execute store result score count player if entity @a[x=28,y=-23,z=40,dx=100,dy=33,dz=100]
#execute store result score count player if entity @a[x=28,y=-23,z=40,dx=100,dy=33,dz=100] run title @a actionbar ["",{"text":"フィールドにいる人数:"},{"score":{"name":"count","objective":"player"}}]

#プレイヤー勝利判定処理(ワールドで実行)
#execute if score count player matches 1 run clear @a
#execute if score count player matches 1 run setblock -7 -57 23 minecraft:redstone_block replace

#発光をスコア化
execute as @a store result score @s growTime run data get entity @s ActiveEffects[{Id:24b}].Duration
#発光通知
execute as @a[scores={growTime = 1..}] run playsound minecraft:block.bamboo.hit master @a[scores={growTime = 1..}] -1.42 -56.00 24.65 999
execute as @a[scores={stage0 = 40..}] run setblock -35 -80 162 minecraft:redstone_block

#再生をスコア化
execute as @a store result score @s regeTime run data get entity @s ActiveEffects[{Id:10b}].Duration
#再生パーティクル表示(アサシンには表示されないように設定)
execute as @a[scores={regeTime = 1..,Assassin = 0}] at @s run particle minecraft:heart ~ ~2 ~ 0.3 0.3 0.3 1 0 force @a

#魔力更新
execute as @a store result score @s MP run clear @s minecraft:nether_star 0

#スライム奈落TP＆キル
tp @e[type=minecraft:slime] ~ -100 ~
kill @e[type=minecraft:slime]

#死者はエフェクト無効化
effect clear @a[scores={dead = 1}]


#スナイパーの処理
#効果音を設定
execute as @a[scores={canSnipe = 1,sniper = 1}] run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1000
#武器を消去
execute as @a[scores={canSnipe = 1,sniper = 1}] run clear @a[scores={canSnipe = 1}] minecraft:spyglass
#5秒後に武器を再配布
execute as @a[scores={canSnipe = 1,sniper = 1}] run schedule function poka:give_snipe 100t append
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
execute as @e[tag=snipe4] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0 force
#弾にダメージと当たり判定を設定
execute as @e at @s positioned ~ ~1.5 ~ if entity @e[tag=snipe1,distance=..0.8] run kill @s
execute as @e at @s positioned ~ ~1.5 ~ if entity @e[tag=snipe2,distance=..1] run kill @s
execute as @e at @s positioned ~ ~1.5 ~ if entity @e[tag=snipe3,distance=..1] run kill @s
execute as @e at @s positioned ~ ~1.5 ~ if entity @e[tag=snipe4,distance=..1] run kill @s
#スコアをリセット
execute as @a[scores={canSnipe = 1,sniper = 1}] run scoreboard players set @a[scores={canSnipe = 1}] canSnipe 0

#スナイパーの弾処理(飛距離150mに設定)
execute as @e[tag=kill] at @s unless entity @p[distance=..150] run kill @s

#狂弾士　武器処理(弾薬配布)
execute as @a[scores={SMG = 1,Kyoudan = 1}] run give @a[scores={SMG = 1,Kyoudan = 1}] arrow 1
execute as @a[scores={SMG = 1,Kyoudan = 1}] run scoreboard players set @a[scores={SMG = 1,Kyoudan = 1}] SMG 0

#魔弾士　武器処理
#音声処理
execute as @a[scores={Madansi = 1,R_click = 1..,MP = 2..}] run playsound minecraft:entity.lightning_bolt.impact master @a[scores={Madansi = 1,R_click = 1..,MP = 2..}] ~ ~ ~ 1000
#弾を生成
execute at @a[scores={Madansi = 1,R_click = 1..,MP = 2..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:[Madan,kill1]}
execute at @a[scores={Madansi = 1,R_click = 1..,MP = 2..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:[Madan2,kill1]}
#弾を自身にテレポート
execute as @a[scores={Madansi = 1,R_click = 1..,MP = 2..}] at @s run tp @e[tag=Madan,distance=..1,sort=nearest,limit=1] ~ ~1.5 ~ ~ ~
execute as @a[scores={Madansi = 1,R_click = 1..,MP = 2..}] at @s run tp @e[tag=Madan2,distance=..1,sort=nearest,limit=1] ~ ~1.5 ~ ~ ~
#弾に動力を設定
execute as @e[tag=Madan] at @s run tp ^ ^ ^1
execute as @e[tag=Madan2] at @s run tp ^ ^ ^2
#パーティクルを設定
execute as @e[tag=Madan] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=Madan2] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0 force
#弾にダメージと当たり判定を設定
execute as @e at @s positioned ~ ~1.5 ~ if entity @e[tag=Madan,distance=..0.9] run effect give @s minecraft:instant_damage 1 0
execute as @e at @s positioned ~ ~1.5 ~ if entity @e[tag=Madan2,distance=..0.9] run effect give @s minecraft:instant_damage 1 0
#魔力を消費(消費魔力：3)
execute as @a[scores={Madansi = 1,R_click = 1..,MP = 3..}] run clear @a[scores={Madansi = 1,R_click = 1..,MP = 3..}] nether_star 3
#右クリックのスコアをリセット
execute at @a[scores={Madansi = 1,R_click = 1..,MP = 3..}] run scoreboard players set @a[scores={Madansi = 1,R_click = 1..,MP = 3..}] R_click 0

#魔弾士MP上限設定(50)
execute as @a[scores={Madansi = 1,MP = 50..}] run clear @a[scores={Madansi = 1,MP = 51..}] nether_star 1

#魔弾士　魔弾距離設定(100mに設定)
execute as @e[tag=kill1] at @s unless entity @p[distance=..100] run kill @s


#死亡処理判定
execute if entity @a[scores={deaths = 5..,dead = 0}] run gamemode adventure @a[scores={deaths = 5..,dead = 0}]
execute if entity @a[scores={deaths = 5..,dead = 0}] run title @a[scores={deaths = 5..,dead = 0}] title {"text":"規定の死亡数に達しています"}
execute if entity @a[scores={deaths = 5..,dead = 0}] run clear @a[scores={deaths = 5..,dead = 0}]
#デバッグ町の観戦地点にTP(map = 0)
execute if entity @a[scores={deaths = 5..,dead = 0,map = 0}] run tp @a[scores={deaths = 5..,dead = 0,map = 0}] 52 22 65
execute if entity @a[scores={deaths = 5..,dead = 0}] run scoreboard players set @a[scores={deaths = 5..,dead = 0}] dead 1

#ロビーのアスレチック落下TP処理
tp @a[x=-47,y=-25,z=-6,dx=18,dy=1,dz=14] -26 -23 1

#必ず最後に配置する

#スキル使用回数初期化
execute as @a[scores={skill = 1..}] run scoreboard players set @a[scores={skill = 1..}] skill 0

#ニンジン棒右クリック回数の初期化
execute as @a[scores={R_click = 1..}] run scoreboard players set @a[scores={R_click = 1..}] R_click 0

