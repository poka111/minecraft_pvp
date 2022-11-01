#持ち物を削除
clear @a[scores={magician = 1}]

#アイテム配布

#魔法師の杖
give @a[scores={magician = 1}] minecraft:carrot_on_a_stick{display:{Name:"\"魔法師の杖\"",color:15597823},Unbreakable:1,HideFlags:1,Enchantments:[{id:unbreaking,lvl:1}]} 1
#魔法師の帽子
item replace entity @a[scores={magician = 1}] armor.head with minecraft:leather_helmet{display:{Name:"\"魔法師の帽子\"",color:15597823},Unbreakable:1,HideFlags:1,Enchantments:[{id:unbreaking,lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Amount:4,Operation:0,Slot:"head",UUID:[I;222206364,872346154,-519882368,-512023229]},{AttributeName:"generic.armor_toughness",Amount:1.0,Operation:0,Slot:"head",UUID:[I;648540452,721550510,460449149,599766174]}]} 1
#魔法師のローブ(上)
item replace entity @a[scores={magician = 1}] armor.chest with minecraft:leather_chestplate{display:{Name:"\"魔法師のローブ(上)\"",color:15597823},Unbreakable:1,HideFlags:1,Enchantments:[{id:unbreaking,lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Amount:4,Operation:0,Slot:"chest",UUID:[I;222206364,872346154,-519882368,-512023229]},{AttributeName:"generic.armor_toughness",Amount:1.0,Operation:0,Slot:"chest",UUID:[I;648540452,721550510,460449149,599766174]}]} 1
#魔法師のローブ(下)
item replace entity @a[scores={magician = 1}] armor.legs with minecraft:leather_leggings{display:{Name:"\"魔法師のローブ(下)\"",color:15597823},Unbreakable:1,HideFlags:1,Enchantments:[{id:unbreaking,lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Amount:4,Operation:0,Slot:"legs",UUID:[I;222206364,872346154,-519882368,-512023229]},{AttributeName:"generic.armor_toughness",Amount:1.0,Operation:0,Slot:"legs",UUID:[I;648540452,721550510,460449149,599766174]}]} 1
#魔法師の靴
item replace entity @a[scores={magician = 1}] armor.feet with minecraft:leather_boots{display:{Name:"\"魔法師の靴\"",color:15597823},Unbreakable:1,HideFlags:1,Enchantments:[{id:unbreaking,lvl:1}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.15,Operation:0,Slot:"feet",UUID:[I;-311616127,-829669066,-338708378,156577785]},{AttributeName:"generic.armor",Amount:4,Operation:0,Slot:"feet",UUID:[I;222206364,872346154,-519882368,-512023229]},{AttributeName:"generic.armor_toughness",Amount:1.0,Operation:0,Slot:"feet",UUID:[I;648540452,721550510,460449149,599766174]}]} 1
#魔法切り替え64
give @a[scores={magician = 1}] minecraft:drowned_spawn_egg{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:1,EntityTag:{id:"minecraft:slime",DeathTime:19,DeathLootTable:"0",Silent:1b,Invulnerable:1b,NoAI:1b,Size:0,CustomName:"\"魔法切り替え\"",CustomNameVisible:0},display:{Name:"{\"text\":\"魔法切り替え\",\"color\":\"gold\"}",Lore:['[{"text":"発動する魔法を切り替える"}]']}} 64
#天命の風5
give @a[scores={magician = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:14,display:{Name:"{\"text\":\"天命の風\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"体力を少し上昇させる。\",\"italic\":false,\"color\":\"white\"}"]}} 5
#克服10
give @a[scores={magician = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:4,display:{Name:"{\"text\":\"克服\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"付与されているデバフを解除する。\",\"italic\":false,\"color\":\"white\"}"]}} 10
#レーダービジョン10
give @a[scores={magician = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:1,display:{Name:"{\"text\":\"レーダービジョン\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"敵全員に10秒間発光を付与する。\",\"italic\":false,\"color\":\"white\"}"]}} 10
#神速3
give @a[scores={magician = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:3,display:{Name:"{\"text\":\"神速\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"3秒間、速度を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}"]}} 3
#MPを付与(初期値：100,上限値：100)
scoreboard players set @a[scores={magician = 1}] MP 100
#魔法瓶(MP:50回復)×2
give @a[scores={magician = 1}] minecraft:potion{Potion:thick,CustomPotionColor:15597823,display:{Name:"\"魔法瓶\"",Lore:["\"飲むと魔力が少し回復する液体\""]},HideFlags:34,CustomPotionEffects:[{Id:15,Amplifier:0,Duration:20,ShowParticles:false}]}
give @a[scores={magician = 1}] minecraft:potion{Potion:thick,CustomPotionColor:15597823,display:{Name:"\"魔法瓶\"",Lore:["\"飲むと魔力が少し回復する液体\""]},HideFlags:34,CustomPotionEffects:[{Id:15,Amplifier:0,Duration:20,ShowParticles:false}]}
#奥義：バーストエクスプロージョン切り替え
give @a[scores={magician = 1,ULT_burst = 0}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:21,display:{Name:"{\"text\":\"バーストエクスプロージョン【奥義】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"前方広範囲に強力な爆発を起こす\",\"italic\":false,\"color\":\"white\"}"]}} 1

attribute @a[scores={magician = 1},limit=1] minecraft:generic.max_health base set 20
effect give @a[scores={magician = 1}] minecraft:instant_health 1 10
