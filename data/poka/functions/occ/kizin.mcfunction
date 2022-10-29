#所持アイテム削除
clear @a[scores={Kizin = 1}]

#アイテム配布

#鬼人の兜
item replace entity @a[scores={Kizin = 1}] armor.head with minecraft:leather_helmet{display:{Name:"\"鬼人の兜\"",color:16711680},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:4,Operation:0,Slot:"head",UUID:[I;143410808,719956162,-867506893,887778816]},{AttributeName:"generic.armor_toughness",Amount:1,Operation:0,Slot:"head",UUID:[I;-986245662,811733267,-709986029,204197489]}]} 1
#鬼人の鎧
item replace entity @a[scores={Kizin = 1}] armor.chest with minecraft:leather_chestplate{display:{Name:"\"鬼人の鎧\"",color:16711680},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:4,Operation:0,Slot:"chest",UUID:[I;143410808,719956162,-867506893,887778816]},{AttributeName:"generic.armor_toughness",Amount:2,Operation:0,Slot:"chest",UUID:[I;-986245662,811733267,-709986029,204197489]}]} 1
#鬼人のレギンス
item replace entity @a[scores={Kizin = 1}] armor.legs with minecraft:leather_leggings{display:{Name:"\"鬼人のレギンス\"",color:16711680},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:4,Operation:0,Slot:"legs",UUID:[I;143410808,719956162,-867506893,887778816]},{AttributeName:"generic.armor_toughness",Amount:2,Operation:0,Slot:"legs",UUID:[I;-986245662,811733267,-709986029,204197489]}]} 1
#鬼人の靴
item replace entity @a[scores={Kizin = 1}] armor.feet with minecraft:leather_boots{display:{Name:"\"鬼人の靴\"",color:16711680},Unbreakable:1,Enchantments:[{id:feather_falling,lvl:999}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.07,Operation:0,Slot:"feet",UUID:[I;989464837,-622566084,868579657,331752647]},{AttributeName:"generic.armor",Amount:4,Operation:0,Slot:"feet",UUID:[I;-794569070,146357213,569331944,-325361479]},{AttributeName:"generic.armor_toughness",Amount:1,Operation:0,Slot:"feet",UUID:[I;-784581538,998053716,-73721749,-994298569]}]} 1
#鬼人の鎌
item replace entity @a[scores={Kizin = 1}] weapon.mainhand with minecraft:diamond_hoe{display:{Name:"\"鬼人の鎌\""},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:6,Operation:0,Slot:"mainhand",UUID:[I;533947658,-915832250,-305085758,-390813798]},{AttributeName:"generic.attack_speed",Amount:1.2,Operation:0,Slot:"mainhand",UUID:[I;569964043,-221038773,-764763902,-840741298]}]} 1
#鬼人化・力64
give @a[scores={Kizin = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:19,display:{Name:"{\"text\":\"鬼人化・力【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に攻撃力を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
#鬼人化・剛64
give @a[scores={Kizin = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:18,display:{Name:"{\"text\":\"鬼人化・剛【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に被ダメージを60%カットする。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
#鬼人化・速64
give @a[scores={Kizin = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:17,display:{Name:"{\"text\":\"鬼人化・速【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に速度を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
#鬼人化・跳64
give @a[scores={Kizin = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:20,display:{Name:"{\"text\":\"鬼人化・跳【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に跳躍力を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 64
#ヒールⅢ 8
give @a[scores={Kizin = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:13,display:{Name:"{\"text\":\"ヒールⅢ\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"体力がかなり回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 8
#レーダービジョン8
give @a[scores={Kizin = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:1,display:{Name:"{\"text\":\"レーダービジョン\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"敵全員に10秒間発光を付与する。\",\"italic\":false,\"color\":\"white\"}"]}} 8
#奥義：鬼神化1
give @a[scores={Kizin = 1,ULT_kizinka = 0}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:21,display:{Name:"{\"text\":\"鬼神化【奥義】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"30秒間、鬼神となり、多くのバフを得ることができる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 1

attribute @a[scores={Kizin = 1},limit=1] minecraft:generic.max_health base set 20
effect give @a[scores={Kizin = 1}] minecraft:instant_health 1 10