#魔法：サンダー
execute as @a[scores={thunder = 1,R_click = 1..,MP = 15..}] at @s run function poka:skills/magic/thunder/apply

#魔法：エクスプロージョン
execute as @a[scores={explo = 1,R_click = 1..,MP = 25..}] at @s run function poka:skills/magic/explosion/apply

#魔法：アイシクル
execute as @a[scores={ice = 1,R_click = 1..,MP = 30..}] at @s run function poka:skills/magic/ice/apply

#魔法：ヒーリング
execute as @a[scores={healM = 1,R_click = 1..,MP = 10..}] at @s run function poka:skills/magic/heal/apply

#魔法(奥義)：バーストエクスプロージョン
execute as @a[scores={burstexplo = 1,R_click = 1..}] at @s run function poka:skills/ult/burstexplo/apply

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