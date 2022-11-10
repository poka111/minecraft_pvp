#>poka:system/kizin/

##鬼人のスキルシステム

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