#持ち物削除
clear @a[scores={Youhei = 1}]

#アイテム配布

#傭兵の兜
item replace entity @a[scores={Youhei = 1}] armor.head with minecraft:iron_helmet{display:{Name:"\"傭兵の兜\""},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:3,Operation:0,Slot:"head",UUID:[I;-369550914,703649949,236617823,-361059408]}]} 1
#傭兵の鎧
item replace entity @a[scores={Youhei = 1}] armor.chest with minecraft:iron_chestplate{display:{Name:"\"傭兵の鎧\""},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:15,Operation:0,Slot:"chest",UUID:[I;-844973445,-259085588,260385733,-967419152]},{AttributeName:"generic.armor_toughness",Amount:6,Operation:0,Slot:"chest",UUID:[I;383823890,-242679874,-939729491,791632058]}]} 1
#傭兵のレギンス
item replace entity @a[scores={Youhei = 1}] armor.legs with minecraft:iron_leggings{display:{Name:"\"傭兵のレギンス\""},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:4,Operation:0,Slot:"legs",UUID:[I;-369550914,703649949,236617823,-361059408]},{AttributeName:"generic.armor_toughness",Amount:2,Operation:0,Slot:"legs",UUID:[I;68645066,240737743,512959442,868096277]}]} 1
#傭兵の靴
item replace entity @a[scores={Youhei = 1}] armor.feet with minecraft:iron_boots{display:{Name:"\"傭兵の靴\""},Unbreakable:1,Enchantments:[{id:feather_falling,lvl:15,id:binding_curse,lvl:1}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:-0.03,Operation:0,Slot:"feet",UUID:[I;344157223,-156456130,-623576172,-564300437]},{AttributeName:"generic.armor",Amount:3,Operation:0,Slot:"feet",UUID:[I;-369550914,703649949,236617823,-361059408]},{AttributeName:"generic.armor_toughness",Amount:1,Operation:0,Slot:"feet",UUID:[I;68645066,240737743,512959442,868096277]}]} 1
#傭兵の大剣
item replace entity @a[scores={Youhei = 1}] weapon.mainhand with minecraft:iron_sword{display:{Name:"\"傭兵の大剣\"",Lore:["\"攻撃力が高いが、非常に重たい大剣\""]},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:20,Operation:0,Slot:"mainhand",UUID:[I;-535421817,834912975,-299532287,-942793679]},{AttributeName:"generic.attack_speed",Amount:-3.6,Operation:0,Slot:"mainhand",UUID:[I;104822389,710542448,-523481746,371959039]}]} 1
#克服10
give @a[scores={Youhei = 1}] minecraft:firework_rocket{CustomModelData:4,display:{Name:"{\"text\":\"克服\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"付与されているデバフを解除する。\",\"italic\":false,\"color\":\"white\"}"]}} 10
#跳躍10
give @a[scores={Youhei = 1}] minecraft:firework_rocket{CustomModelData:7,display:{Name:"{\"text\":\"跳躍\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"3秒間、跳躍力が上昇する。\",\"italic\":false,\"color\":\"white\"}"]}} 10
#再生10
give @a[scores={Youhei = 1}] minecraft:firework_rocket{CustomModelData:5,display:{Name:"{\"text\":\"再生\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"30秒間、少し体力が回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 10
#瞬歩20
give @a[scores={Youhei = 1}] minecraft:firework_rocket{CustomModelData:8,display:{Name:"{\"text\":\"瞬歩\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"1秒間、速度が上昇する。\",\"italic\":false,\"color\":\"white\"}"]}} 20
#ヒールⅠ 5
give @a[scores={Youhei = 1}] minecraft:firework_rocket{CustomModelData:11,display:{Name:"{\"text\":\"ヒールⅠ\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"体力が少し回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 5
#レーダービジョン10
give @a[scores={Youhei = 1}] minecraft:firework_rocket{CustomModelData:1,display:{Name:"{\"text\":\"レーダービジョン\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"敵全員に10秒間発光を付与する。\",\"italic\":false,\"color\":\"white\"}"]}} 10
