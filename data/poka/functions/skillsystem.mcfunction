#スキル使用系の奥義のモデルは21に設定しています
#選択系スキルは50～
#50:healingarea
#51:reversal

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
execute as @a[scores={Bommer=1}] at @s run function poka:system/bommer/

##魔法士　スキルシステム
execute as @a[scores={magician=1}] at @s run function poka:system/magic/

##鬼人　スキルシステム
execute as @a[scores={Kizin=1}] at @s run function poka:system/kizin/

##魔弾士　スキルシステム
execute as @a[scores={Madansi = 1}] at @s run function poka:system/madansi/

##スナイパー　スキルシステム
execute as @a[scores={sniper = 1}] at @s run function poka:system/sniper/

##テレポーター　スキルシステム
execute as @a[scores={Teleporter = 1}] at @s run function poka:system/teleporter/

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

#--------------------スキルに直接作用しないシステム------------------

##試合開始したら、パッシブスキルを有効化
execute if entity @a[tag=start] run function poka:passive/always

#魔法師MP上限設定
execute as @a[scores={magician = 1,MP = 100..}] at @s run scoreboard players set @s MP 100

#全ての着弾した矢を削除(エンティティデータを変更)
execute as @e[type=arrow,nbt={inGround:true}] at @s if data entity @s Owner run data merge entity @s {life:1200}

#殲滅弓ヘカートⅡHP更新＆発光ジャンプ不可付与処理(メインハンド)
#effect give @a[nbt={SelectedItem:{id:"minecraft:bow",tag:{display:{Name:"\"殲滅弓へカートⅡ\"",Lore:["\"敵を消し去る弓\""]}}}}] minecraft:glowing 1 0 true


#殲滅弓ヘカートⅡHP更新＆発光ジャンプ不可付与処理(オフハンド)
#effect give @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow",tag:{display:{Name:"\"殲滅弓へカートⅡ\"",Lore:["\"敵を消し去る弓\""]}}}]}] minecraft:glowing 1 0 true

#プレイヤーカウント
execute store result score count player if entity @a[gamemode=!spectator]

#再生をスコア化
execute as @a store result score @s regeTime run data get entity @s ActiveEffects[{Id:10b}].Duration
#再生パーティクル表示(アサシンには表示されないように設定)
execute as @a[scores={regeTime = 1..,Assassin = 0}] at @s run particle minecraft:heart ~ ~2 ~ 0.3 0.3 0.3 1 0 force @a

##死者はエフェクト無効化
effect clear @a[scores={dead = 1}]

##リスポーン直後は発光無効化
effect clear @a[tag=respawn] minecraft:glowing


##狂弾士　武器処理(弾薬配布)
execute as @a[scores={SMG = 1,Kyoudan = 1}] at @s run give s arrow 1
execute as @a[scores={SMG = 1,Kyoudan = 1}] at @s run scoreboard players set @s SMG 0

#MPをレベルに設定
execute as @a[scores={magician=1}] at @s run function poka:system/all/mpset_levels
execute as @a[scores={Madansi=1}] at @s run function poka:system/all/mpset_levels
execute as @a[scores={Teleporter=1}] at @s run function poka:system/all/blinkset_levels

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