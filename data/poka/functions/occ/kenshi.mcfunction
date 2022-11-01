#所持アイテム削除
clear @a[scores={Kenshi = 1}]

#アイテム配布

#剣士の剣
item replace entity @a[scores={Kenshi = 1}] weapon.mainhand with minecraft:iron_sword{display:{Name:"\"剣士の剣\""},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:5,Operation:0,Slot:"mainhand",UUID:[I;-606178741,43176933,-565551400,-320326354]},{AttributeName:"generic.armor",Amount:4,Operation:0,Slot:"mainhand",UUID:[I;688412600,561743327,906683187,372743036]},{AttributeName:"generic.armor_toughness",Amount:1.0,Operation:0,Slot:"mainhand",UUID:[I;-328364121,539404689,-935098745,154708950]},{AttributeName:"generic.attack_speed",Amount:0.3,Operation:0,Slot:"mainhand",UUID:[I;290261803,-848555530,-354004409,707444573]}]} 1
#剣士の兜
item replace entity @a[scores={Kenshi = 1}] armor.head with minecraft:iron_helmet{display:{Name:"\"剣士の兜\"",Lore:["\"剣士用の兜\""],color:16777215},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Amount:9999,Operation:0,Slot:"head",UUID:[I;105663193,371470205,778085412,559033523]},{AttributeName:"generic.armor",Amount:6,Operation:0,Slot:"head",UUID:[I;143410808,719956162,-867506893,887778816]},{AttributeName:"generic.armor_toughness",Amount:2,Operation:0,Slot:"head",UUID:[I;-986245662,811733267,-709986029,204197489]}]} 1
#剣士の鎧
item replace entity @a[scores={Kenshi = 1}] armor.chest with minecraft:iron_chestplate{display:{Name:"\"剣士の鎧\"",Lore:["\"剣士用の鎧\""],color:16777215},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Amount:999,Operation:0,Slot:"chest",UUID:[I;105663193,371470205,778085412,559033523]},{AttributeName:"generic.armor",Amount:6,Operation:0,Slot:"chest",UUID:[I;143410808,719956162,-867506893,887778816]},{AttributeName:"generic.armor_toughness",Amount:2,Operation:0,Slot:"chest",UUID:[I;-986245662,811733267,-709986029,204197489]}]} 1
#剣士のレギンス
item replace entity @a[scores={Kenshi = 1}] armor.legs with minecraft:iron_leggings{display:{Name:"\"剣士のレギンス\"",Lore:["\"剣士用のレギンス\""],color:16777215},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Amount:999,Operation:0,Slot:"legs",UUID:[I;105663193,371470205,778085412,559033523]},{AttributeName:"generic.armor",Amount:6,Operation:0,Slot:"legs",UUID:[I;143410808,719956162,-867506893,887778816]},{AttributeName:"generic.armor_toughness",Amount:2,Operation:0,Slot:"legs",UUID:[I;-986245662,811733267,-709986029,204197489]}]} 1
#剣士の靴
item replace entity @a[scores={Kenshi = 1}] armor.feet with minecraft:iron_boots{display:{Name:"\"剣士の靴\"",Lore:["\"剣士用の靴\""],color:16777215},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Amount:999,Operation:0,Slot:"feet",UUID:[I;105663193,371470205,778085412,559033523]},{AttributeName:"generic.movement_speed",Amount:0.08,Operation:0,Slot:"feet",UUID:[I;432985443,218869429,806984614,870965857]},{AttributeName:"generic.armor",Amount:6,Operation:0,Slot:"feet",UUID:[I;143410808,719956162,-867506893,887778816]},{AttributeName:"generic.armor_toughness",Amount:2,Operation:0,Slot:"feet",UUID:[I;-986245662,811733267,-709986029,204197489]}]} 1
#剣士の盾
item replace entity @a[scores={Kenshi = 1}] weapon.offhand with minecraft:shield{display:{Name:"\"剣士の盾\""},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Amount:999,Operation:0,Slot:"offhand",UUID:[I;946133475,-370774097,327474117,-595196536]},{AttributeName:"generic.armor",Amount:2,Operation:0,Slot:"offhand",UUID:[I;552730578,-300031640,565693698,344097672]},{AttributeName:"generic.armor_toughness",Amount:1,Operation:0,Slot:"offhand",UUID:[I;-504290020,-927834844,623835319,-877289347]}]} 1
#レーダービジョン8
give @a[scores={Kenshi = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:1,display:{Name:"{\"text\":\"レーダービジョン\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"敵全員に10秒間発光を付与する。\",\"italic\":false,\"color\":\"white\"}"]}} 8
#克服10
give @a[scores={Kenshi = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:4,display:{Name:"{\"text\":\"克服\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"付与されているデバフを解除する。\",\"italic\":false,\"color\":\"white\"}"]}} 10
#再生5
give @a[scores={Kenshi = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:5,display:{Name:"{\"text\":\"再生\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"30秒間、少し体力が回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 5
#ファランクス9
give @a[scores={Kenshi = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:2,display:{Name:"{\"text\":\"ファランクス\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"7秒間、被ダメージを80%カットする。\",\"italic\":false,\"color\":\"white\"}"]}} 9
#ヒールⅠ 10
give @a[scores={Kenshi = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:11,display:{Name:"{\"text\":\"ヒールⅠ\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"体力が少し回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 10
#奥義　鋼強創体
give @a[scores={Kenshi = 1,ULT_Kensi = 0}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:21,display:{Name:"{\"text\":\"鋼強創体【奥義】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"25秒間、被ダメージを100%カットする。\",\"italic\":false,\"color\":\"white\"}"]}} 1

attribute @a[scores={Kenshi = 1},limit=1] minecraft:generic.max_health base set 20
effect give @a[scores={Kenshi = 1}] minecraft:instant_health 1 10