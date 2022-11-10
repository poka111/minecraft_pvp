#所持アイテム削除
clear @a[scores={Lumber = 1}]

#アイテム配布

#ランバージャックの靴
item replace entity @a[scores={Lumber = 1}] armor.feet with minecraft:netherite_boots{display:{Name:"\"ランバージャックの靴\""},Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:-0.06,Operation:0,Slot:"feet",UUID:[I;471959179,-410957937,-315526813,-825311413]},{AttributeName:"generic.armor",Amount:10,Operation:0,Slot:"feet",UUID:[I;-134029515,940199900,631298845,-2079883]},{AttributeName:"generic.armor_toughness",Amount:4,Operation:0,Slot:"feet",UUID:[I;397206572,-263536078,-252271009,-201594972]}]} 1
#木こり愛用の斧
item replace entity @a[scores={Lumber = 1}] weapon.mainhand with minecraft:netherite_axe{display:{Name:"\"木こり愛用の斧\""},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:-0.03,Operation:0,Slot:"mainhand",UUID:[I;471959179,-410957937,-315526813,-825311413]},{AttributeName:"generic.attack_damage",Amount:30,Operation:0,Slot:"mainhand",UUID:[I;-550406583,909804548,398648380,292044134]},{AttributeName:"generic.attack_speed",Amount:-3.7,Operation:0,Slot:"mainhand",UUID:[I;969812100,-454314501,-805350869,-586714647]}]} 1
#克服32
give @a[scores={Lumber = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:4,display:{Name:"{\"text\":\"克服\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"付与されているデバフを解除する。\",\"italic\":false,\"color\":\"white\"}"]}} 32
#瞬歩25
give @a[scores={Lumber = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:8,display:{Name:"{\"text\":\"瞬歩\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"1秒間、速度が上昇する。\",\"italic\":false,\"color\":\"white\"}"]}} 25
#再生5
give @a[scores={Lumber = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:5,display:{Name:"{\"text\":\"再生\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"30秒間、少し体力が回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 5
#生命の息吹5
give @a[scores={Lumber = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:15,display:{Name:"{\"text\":\"天命の息吹\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"体力を上昇させる。\",\"italic\":false,\"color\":\"white\"}"]}} 5
#ヒールⅢ 7
give @a[scores={Lumber = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:13,display:{Name:"{\"text\":\"ヒールⅢ\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"体力がかなり回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 7

attribute @a[scores={Lumber = 1},limit=1] minecraft:generic.max_health base set 20
effect give @a[scores={Lumber = 1}] minecraft:instant_health 1 10