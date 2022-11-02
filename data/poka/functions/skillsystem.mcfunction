#スキル使用系の奥義のモデルは21に設定しています



##最速で実行

##常に満腹度回復を付与
effect give @a minecraft:saturation 2 100 true

##死亡検知

##1デス目
execute as @a[scores={deaths=1,death1=0},tag=start] at @s run tellraw @s "残り残機:4"
execute as @a[scores={deaths=1,death1=0},tag=start] at @s run function poka:game/respawn
execute as @a[scores={deaths=1,death1=0},tag=start] at @s run scoreboard players set @s death1 1

##2デス目
execute as @a[scores={deaths=2,death2=0},tag=start] at @s run tellraw @s "残り残機:3"
execute as @a[scores={deaths=2,death2=0},tag=start] at @s run function poka:game/respawn
execute as @a[scores={deaths=2,death2=0},tag=start] at @s run scoreboard players set @s death2 1

##3デス目
execute as @a[scores={deaths=3,death3=0},tag=start] at @s run tellraw @s "残り残機:2"
execute as @a[scores={deaths=3,death3=0},tag=start] at @s run function poka:game/respawn
execute as @a[scores={deaths=3,death3=0},tag=start] at @s run scoreboard players set @s death3 1

##4デス目
execute as @a[scores={deaths=4,death4=0},tag=start] at @s run tellraw @s "残り残機:1"
execute as @a[scores={deaths=4,death4=0},tag=start] at @s run function poka:game/respawn
execute as @a[scores={deaths=4,death4=0},tag=start] at @s run scoreboard players set @s death4 1

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


##ボマー　スキルシステム

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


##魔法士　スキルシステム

#魔法：サンダー
execute as @a[scores={thunder = 1,R_click = 1..,MP = 15..}] at @s run function poka:skills/magic/thunder/apply

#魔法：エクスプロージョン
execute as @a[scores={explo = 1,R_click = 1..,MP = 25..}] at @s run function poka:skills/magic/explosion/apply

#魔法：アイシクル
execute as @a[scores={ice = 1,R_click = 1..,MP = 30..}] at @s run function poka:skills/magic/ice/apply

#魔法：ヒーリング
execute as @a[scores={healM = 1,R_click = 1..,MP = 10..}] at @s run function poka:skills/magic/heal/apply

#魔法(奥義)：バーストエクスプロージョン
execute as @a[scores={burstexplo = 1,R_click = 1..}] at @s run function poka:skills/burstexplo

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
execute as @a[scores={magician = 1,healM = 1,changeMagic = 0}] run give @a[scores={magician = 1}] minecraft:drowned_spawn_egg{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:1,EntityTag:{id:"minecraft:slime",DeathTime:19,DeathLootTable:"0",Silent:1b,Invulnerable:1b,NoAI:1b,Size:0,CustomName:"\"魔法切り替え\"",CustomNameVisible:0},display:{Name:"{\"text\":\"魔法切り替え\",\"color\":\"gold\"}",Lore:['[{"text":"発動する魔法を切り替える"}]']}} 1

execute as @a[scores={magician = 1,changeMagic = 0}] run scoreboard players set @a[scores={magician = 1,changeMagic = 0}] healM 0
execute as @a[scores={thunder = 1}] run title @a[scores={thunder = 1}] actionbar {"text":"発動魔法：サンダー(消費MP:15)","color":"yellow","bold":true,"underlined":true}

#魔法切り替え(エクスプロージョン)
execute as @a[scores={magician = 1,changeMagic = 1}] run scoreboard players set @a[scores={magician = 1,changeMagic = 1}] explo 1
#再配布
execute as @a[scores={magician = 1,thunder = 1,changeMagic = 1}] at @s run playsound minecraft:block.enchantment_table.use player @a[scores={magician = 1,thunder = 1,changeMagic = 1}] ~ ~ ~ 900
execute as @a[scores={magician = 1,thunder = 1,changeMagic = 1}] run give @a[scores={magician = 1}] minecraft:drowned_spawn_egg{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:1,EntityTag:{id:"minecraft:slime",DeathTime:19,DeathLootTable:"0",Silent:1b,Invulnerable:1b,NoAI:1b,Size:0,CustomName:"\"魔法切り替え\"",CustomNameVisible:0},display:{Name:"{\"text\":\"魔法切り替え\",\"color\":\"gold\"}",Lore:['[{"text":"発動する魔法を切り替える"}]']}} 1
execute as @a[scores={magician = 1,changeMagic = 1}] run scoreboard players set @a[scores={magician = 1,changeMagic = 1}] thunder 0
execute as @a[scores={magician = 1,changeMagic = 1}] run scoreboard players set @a[scores={magician = 1,changeMagic = 1}] ice 0
execute as @a[scores={magician = 1,changeMagic = 1}] run scoreboard players set @a[scores={magician = 1,changeMagic = 1}] healM 0
execute as @a[scores={explo = 1}] run title @a[scores={explo = 1}] actionbar {"text":"発動魔法：エクスプロージョン(消費MP:25)","color":"light_purple","bold":true,"underlined":true}

#魔法切り替え(アイシクル)
execute as @a[scores={magician = 1,changeMagic = 2}] run scoreboard players set @a[scores={magician = 1,changeMagic = 2}] ice 1
#再配布
execute as @a[scores={magician = 1,explo = 1,changeMagic = 2}] at @s run playsound minecraft:block.enchantment_table.use player @a[scores={magician = 1,explo = 1,changeMagic = 2}] ~ ~ ~ 900
execute as @a[scores={magician = 1,explo = 1,changeMagic = 2}] run give @a[scores={magician = 1}] minecraft:drowned_spawn_egg{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:1,EntityTag:{id:"minecraft:slime",DeathTime:19,DeathLootTable:"0",Silent:1b,Invulnerable:1b,NoAI:1b,Size:0,CustomName:"\"魔法切り替え\"",CustomNameVisible:0},display:{Name:"{\"text\":\"魔法切り替え\",\"color\":\"gold\"}",Lore:['[{"text":"発動する魔法を切り替える"}]']}} 1
execute as @a[scores={magician = 1,changeMagic = 2}] run scoreboard players set @a[scores={magician = 1,changeMagic = 2}] explo 0
execute as @a[scores={magician = 1,changeMagic = 2}] run scoreboard players set @a[scores={magician = 1,changeMagic = 2}] thunder 0
execute as @a[scores={magician = 1,changeMagic = 2}] run scoreboard players set @a[scores={magician = 1,changeMagic = 2}] healM 0
execute as @a[scores={ice = 1}] run title @a[scores={ice = 1}] actionbar {"text":"発動魔法：アイシクル(消費MP:30)","color":"blue","bold":true,"underlined":true}

#魔法切り替え(ヒーリング)
execute as @a[scores={magician = 1,changeMagic = 3}] run scoreboard players set @a[scores={magician = 1,changeMagic = 3}] healM 1
#再配布
execute as @a[scores={magician = 1,ice = 1,changeMagic = 3}] at @s run playsound minecraft:block.enchantment_table.use player @a[scores={magician = 1,ice = 1,changeMagic = 3}] ~ ~ ~ 900
execute as @a[scores={magician = 1,ice = 1,changeMagic = 3}] run give @a[scores={magician = 1}] minecraft:drowned_spawn_egg{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:1,EntityTag:{id:"minecraft:slime",DeathTime:19,DeathLootTable:"0",Silent:1b,Invulnerable:1b,NoAI:1b,Size:0,CustomName:"\"魔法切り替え\"",CustomNameVisible:0},display:{Name:"{\"text\":\"魔法切り替え\",\"color\":\"gold\"}",Lore:['[{"text":"発動する魔法を切り替える"}]']}} 1
execute as @a[scores={magician = 1,changeMagic = 3}] run scoreboard players set @a[scores={magician = 1,changeMagic = 3}] ice 0
execute as @a[scores={magician = 1,changeMagic = 3}] run scoreboard players set @a[scores={magician = 1,changeMagic = 3}] thunder 0
execute as @a[scores={magician = 1,changeMagic = 3}] run scoreboard players set @a[scores={magician = 1,changeMagic = 3}] explo 0
execute as @a[scores={healM = 1}] run title @a[scores={healM = 1}] actionbar {"text":"発動魔法：ヒーリング(消費MP:10)","color":"red","bold":true,"underlined":true}

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
execute as @a[scores={burstexplo = 1}] run title @a[scores={burstexplo = 1}] actionbar {"text":"発動魔法：神大魔法「バーストエクスプロージョン」(消費MP:全て)","color":"dark_purple","bold":true,"underlined":true}

#魔法切り替え(ヒーリング→サンダーに初期化)
execute as @a[scores={magician = 1,changeMagic = 4..}] run scoreboard players set @a[scores={magician = 1,changeMagic = 4..}] changeMagic 0

#魔力瓶(MP回復値：50)処理
execute as @a[scores={drink = 1..,magician = 1}] at @s run scoreboard players add @s MP 50
execute as @a[scores={drink = 1..,magician = 1}] run scoreboard players set @a[scores={drink = 1..}] drink 0

execute as @a[scores={drink = 1..,Madansi = 1}] at @s run scoreboard players add @s MP 50
execute as @a[scores={drink = 1..,Madansi = 1}] run scoreboard players set @a[scores={drink = 1..}] drink 0

##鬼人　スキルシステム

##鬼人化系のスキルは、実装がかなりややこしいので、advancementで処理は行わない。
#鬼人化・速(無限スキル)(モデル:17)
#再配布処理
execute as @a[scores={skill_kizinka_soku = 1..},nbt={SelectedItem:{id:"minecraft:firework_rocket",tag:{CustomModelData:17}}}] run item replace entity @a[scores={skill_kizinka_soku = 1..}] weapon.mainhand with minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:17,display:{Name:"{\"text\":\"鬼人化・速【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に速度を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
execute as @a[scores={skill_kizinka_soku = 1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:firework_rocket",tag:{CustomModelData:17}}]}] run item replace entity @a[scores={skill_kizinka_soku = 1..}] weapon.offhand with minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:17,display:{Name:"{\"text\":\"鬼人化・速【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に速度を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
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
execute as @a[scores={skill_kizinka_gou = 1..},nbt={SelectedItem:{id:"minecraft:firework_rocket",tag:{CustomModelData:18}}}] run item replace entity @a[scores={skill_kizinka_gou = 1..}] weapon.mainhand with minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:18,display:{Name:"{\"text\":\"鬼人化・剛【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に被ダメージを60%カットする。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
execute as @a[scores={skill_kizinka_gou = 1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:firework_rocket",tag:{CustomModelData:18}}]}] run item replace entity @a[scores={skill_kizinka_gou = 1..}] weapon.offhand with minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:18,display:{Name:"{\"text\":\"鬼人化・剛【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に被ダメージを60%カットする。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
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
execute as @a[scores={skill_kizinka_tikara = 1..},nbt={SelectedItem:{id:"minecraft:firework_rocket",tag:{CustomModelData:19}}}] run item replace entity @a[scores={skill_kizinka_tikara = 1..}] weapon.mainhand with minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:19,display:{Name:"{\"text\":\"鬼人化・力【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に攻撃力を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
execute as @a[scores={skill_kizinka_tikara = 1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:firework_rocket",tag:{CustomModelData:19}}]}] run item replace entity @a[scores={skill_kizinka_tikara = 1..}] weapon.offhand with minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:19,display:{Name:"{\"text\":\"鬼人化・力【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に攻撃力を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
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
execute as @a[scores={skill_kizinka_tyou = 1..},nbt={SelectedItem:{id:"minecraft:firework_rocket",tag:{CustomModelData:20}}}] run item replace entity @a[scores={skill_kizinka_tyou = 1..}] weapon.mainhand with minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:20,display:{Name:"{\"text\":\"鬼人化・跳【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に跳躍力を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
execute as @a[scores={skill_kizinka_tyou = 1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:firework_rocket",tag:{CustomModelData:20}}]}] run item replace entity @a[scores={skill_kizinka_tyou = 1..}] weapon.offhand with minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:20,display:{Name:"{\"text\":\"鬼人化・跳【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に跳躍力を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
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
execute as @a[scores={ULT_kizinka = 1}] run scoreboard players set #command delay_ULT_kizinka 300
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
execute if score #command delay_ULT_kizinka matches 0 run effect give @a[scores={ULT_kizinka = 9999}] minecraft:slowness 3 100 false
execute if score #command delay_ULT_kizinka matches 0 run effect give @a[scores={ULT_kizinka = 9999}] minecraft:jump_boost 3 250 false
execute if score #command delay_ULT_kizinka matches 0 run effect give @a[scores={ULT_kizinka = 9999}] minecraft:glowing 3 100 false
execute if score #command delay_ULT_kizinka matches 0 run effect give @a[scores={ULT_kizinka = 9999}] minecraft:weakness 3 100 false
execute if score #command delay_ULT_kizinka matches 0 run effect give @a[scores={ULT_kizinka = 9999}] minecraft:poison 3 5 false
execute if score #command delay_ULT_kizinka matches 0 run effect give @a[scores={ULT_kizinka = 9999}] minecraft:blindness 3 100 false
execute if score #command delay_ULT_kizinka matches 0 run effect give @a[scores={ULT_kizinka = 9999}] minecraft:nausea 3 100 false
execute if score #command delay_ULT_kizinka matches 0 run effect give @a[scores={ULT_kizinka = 9999}] minecraft:night_vision 3 100 false
#初期化するまで再使用不可
execute if score #command delay_ULT_kizinka matches 0 run scoreboard players set @a[scores={ULT_kizinka = 9999}] ULT_kizinka 10000

##アサシン　奥義

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

##スナイパー　奥義

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

##剣士　奥義

#奥義：鋼強創体(こうきょうそうたい)(剣士の奥義)
execute as @a[scores={ULT_Kensi = 1}] run effect give @a[scores={ULT_Kensi = 1}] minecraft:resistance 25 100 true
execute as @a[scores={ULT_Kensi = 1}] run playsound minecraft:entity.ender_dragon.ambient player @a[scores={ULT_Kensi = 1}] ~ ~ ~ 999 1
execute as @a[scores={ULT_Kensi = 1}] run title @a title "奥義：鋼強創体を発動しました"
execute as @a[scores={ULT_Kensi = 1}] run scoreboard players set @a[scores={ULT_Kensi = 1}] ULT_Kensi 9999

##魔弾士　奥義

#奥義：無限魔装弾(魔弾士の奥義)ULT_Madansi = 0
execute as @a[scores={ULT_Madansi = 1}] run schedule function poka:finish_ult_madansi 600t
execute as @a[scores={ULT_Madansi = 1}] run scoreboard players set @a[scores={ULT_Madansi = 1}] ULT_Madansi 2

##テレポーターの特殊スキル実装
execute as @a[scores={Teleporter=1,R_click=1..,blink=10},tag=start] at @s run function poka:skills/longtp

#--------------------スキルに直接作用しないシステム------------------

##試合開始したら、パッシブスキルを有効化
execute if entity @a[tag=start] run function poka:passive/always

#魔法師MP上限設定
execute as @a[scores={magician = 1,MP = 100..}] at @s run scoreboard players set @s MP 100

#テレポーターブリンク数上限設定(10)
execute as @a[scores={Teleporter = 1,blink = 11..}] at @s run scoreboard players remove @s blink 1

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

#プレイヤーカウント
execute store result score count player if entity @a[gamemode=!spectator]

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

##スライム奈落TP＆キル
tp @e[type=minecraft:slime] ~ -100 ~
kill @e[type=minecraft:slime]

##死者はエフェクト無効化
effect clear @a[scores={dead = 1}]

##リスポーン直後は発光無効化
effect clear @a[tag=respawn] minecraft:glowing


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

##狂弾士　武器処理(弾薬配布)
execute as @a[scores={SMG = 1,Kyoudan = 1}] at @s run give s arrow 1
execute as @a[scores={SMG = 1,Kyoudan = 1}] at @s run scoreboard players set @s SMG 0

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

#MPをレベルに設定
execute as @a[scores={magician=1}] at @s run function poka:system/mpset_levels
execute as @a[scores={Madansi=1}] at @s run function poka:system/mpset_levels
execute as @a[scores={Teleporter=1}] at @s run function poka:system/blinkset_levels

#死亡処理判定(once)
execute if entity @a[scores={deaths = 5..,dead = 0}] at @s run function poka:game/dead

#ロビーのアスレチック落下TP処理
tp @a[x=-47,y=-25,z=-6,dx=18,dy=1,dz=14] -26 -23 1

##---------------必ず最後に配置する----------------------

##スキルアイテムの削除
kill @e[type=minecraft:firework_rocket]

##残り人数が1人になったら自動で終了する
#execute as @a[gamemode=adventure,tag=start] run execute if score count player matches 1 run clear @a
#execute as @a[gamemode=adventure,tag=start] run execute if score count player matches 1 run setblock -7 -57 23 minecraft:redstone_block replace

##スキル使用回数初期化
execute as @a[scores={skill = 1..}] run scoreboard players set @a[scores={skill = 1..}] skill 0

##ニンジン棒右クリック回数の初期化
execute as @a[scores={R_click = 1..}] run scoreboard players set @a[scores={R_click = 1..}] R_click 0