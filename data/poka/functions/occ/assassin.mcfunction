#>poka:occ/assassin
#所持アイテム削除
clear @a[scores={Assassin = 1}]

#アイテム配布

#暗殺者のダガー
give @a[scores={Assassin = 1}] minecraft:netherite_sword{CanPlaceOn:["#minecraft:all"],HideFlags: 16,display:{Name:"\"†暗殺者のダガー†\"",Lore:["\"暗殺者が愛用している暗殺用のダガー\""]},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:9999,Operation:0,Slot:"mainhand",UUID:[I;-535421817,834912975,-299532287,-942793679]},{AttributeName:"generic.attack_speed",Amount:99,Operation:0,Slot:"mainhand",UUID:[I;104822389,710542448,-523481746,371959039]}]} 1
#レーダービジョン 20
give @a[scores={Assassin = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:1,display:{Name:"{\"text\":\"レーダービジョン\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"敵全員に10秒間発光を付与する。\",\"italic\":false,\"color\":\"white\"}"]}} 20
#跳躍 20
give @a[scores={Assassin = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:7,display:{Name:"{\"text\":\"跳躍\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"3秒間、跳躍力が上昇する。\",\"italic\":false,\"color\":\"white\"}"]}} 20
#克服 30
give @a[scores={Assassin = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:4,display:{Name:"{\"text\":\"克服\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"付与されているデバフを解除する。\",\"italic\":false,\"color\":\"white\"}"]}} 30
#瞬歩 10
give @a[scores={Assassin = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:8,display:{Name:"{\"text\":\"瞬歩\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"1秒間、速度が上昇する。\",\"italic\":false,\"color\":\"white\"}"]}} 10
#奥義：虚視無双 1
give @a[scores={Assassin = 1,ULT_kokusimusou = 0}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:21,display:{Name:"{\"text\":\"虚視無双【奥義】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"敵全員に15秒間、麻痺を付与する。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"更に、効果中は移動速度が上昇する。\",\"italic\":false,\"color\":\"white\"}"]}} 1
#体力を設定(6)
attribute @a[scores={Assassin = 1},limit=1] minecraft:generic.max_health base set 6
effect give @a[scores={Assassin = 1}] minecraft:instant_health 1 10
