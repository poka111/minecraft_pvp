
#アイテムを削除
clear @a[scores={Kyoudan = 1}]
#狂弾士のボウガン
execute as @a[scores={Kyoudan = 1}] run give @a[scores={Kyoudan = 1}] minecraft:crossbow{display:{Name:"\"狂弾士のボウガン\"",Lore:["\"狂弾士が使うボウガン。連射が可能な特別製のボウガンだ。\""]},Unbreakable:1,Enchantments:[{id:quick_charge,lvl:5},{id:knockback,lvl:999},{id:punch,lvl:2},{id:multishot,lvl:3},{id:piercing,lvl:3}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.2,Operation:0,Slot:"mainhand",UUID:[I;-911795137,878714578,-233691550,-288098387]}]}

#狂弾士の兜
item replace entity @a[scores={Kyoudan = 1}] armor.head with minecraft:iron_helmet{display:{Name:"\"狂弾士の兜\""},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:3,Operation:0,Slot:"head",UUID:[I;41381893,-650551575,276201258,-585036581]},{AttributeName:"generic.armor_toughness",Amount:3,Operation:0,Slot:"head",UUID:[I;-526819786,626096212,-448154768,-819927095]}]}

#狂弾士の鎧
item replace entity @a[scores={Kyoudan = 1}] armor.chest with minecraft:iron_chestplate{display:{Name:"\"狂弾士の鎧\""},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:6,Operation:0,Slot:"chest",UUID:[I;41381893,-650551575,276201258,-585036581]},{AttributeName:"generic.armor_toughness",Amount:3,Operation:0,Slot:"chest",UUID:[I;-526819786,626096212,-448154768,-819927095]}]}

#狂弾士のレギンス
item replace entity @a[scores={Kyoudan = 1}] armor.legs with minecraft:iron_leggings{display:{Name:"\"狂弾士のレギンス\""},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:4,Operation:0,Slot:"legs",UUID:[I;41381893,-650551575,276201258,-585036581]},{AttributeName:"generic.armor_toughness",Amount:3,Operation:0,Slot:"legs",UUID:[I;-526819786,626096212,-448154768,-819927095]}]}

#狂弾士の靴
item replace entity @a[scores={Kyoudan = 1}] armor.feet with minecraft:iron_boots{display:{Name:"\"狂弾士の靴\""},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.max_health",Amount:20,Operation:0,UUID:[I;345400360,-251047296,225464686,-168264470]},{AttributeName:"generic.movement_speed",Amount:0.1,Operation:0,UUID:[I;-879669749,582386920,-71101022,-723984094]},{AttributeName:"generic.armor",Amount:2,Operation:0,Slot:"feet",UUID:[I;41381893,-650551575,276201258,-585036581]},{AttributeName:"generic.armor_toughness",Amount:3,Operation:0,Slot:"feet",UUID:[I;-526819786,626096212,-448154768,-819927095]}]}

#超再生1
give @a[scores={Kyoudan = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:6,display:{Name:"{\"text\":\"超再生\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"30秒間、かなり体力が回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#跳躍10
give @a[scores={Kyoudan = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:7,display:{Name:"{\"text\":\"跳躍\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"3秒間、跳躍力が上昇する。\",\"italic\":false,\"color\":\"white\"}"]}} 10

#克服10
give @a[scores={Kyoudan = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:4,display:{Name:"{\"text\":\"克服\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"付与されているデバフを解除する。\",\"italic\":false,\"color\":\"white\"}"]}} 10

#神速2
give @a[scores={Kyoudan = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:3,display:{Name:"{\"text\":\"神速\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"3秒間、速度を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}"]}} 2

#レーダービジョン5
give @a[scores={Kyoudan = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:1,display:{Name:"{\"text\":\"レーダービジョン\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"敵全員に10秒間発光を付与する。\",\"italic\":false,\"color\":\"white\"}"]}} 5

#ヒールⅢ 1
give @a[scores={Kyoudan = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:13,display:{Name:"{\"text\":\"ヒールⅢ\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"体力がかなり回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#矢64
give @a[scores={Kyoudan = 1}] arrow 1

attribute @a[scores={Kyoudan = 1},limit=1] minecraft:generic.max_health base set 20
effect give @a[scores={Kyoudan = 1}] minecraft:instant_health 1 10