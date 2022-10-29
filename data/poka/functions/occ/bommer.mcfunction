#持ち物削除
clear @a[scores={Bommer = 1}]

#アイテム付与
#爆殺者のボウガン
item replace entity @a[scores={Bommer = 1}] weapon.mainhand with minecraft:crossbow{display:{Name:"\"爆殺者のボウガン\""},Unbreakable:1,HideFlags:1,Enchantments:[{id:quick_charge,lvl:1},{id:multishot,lvl:3}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.04,Operation:0,Slot:"mainhand",UUID:[I;440138722,-416724457,491454195,690631192]}]} 1
#爆殺者の兜
item replace entity @a[scores={Bommer = 1}] armor.head with minecraft:leather_helmet{display:{Name:"\"爆殺者の兜\"",color:655104},Unbreakable:1,Enchantments:[{id:blast_protection,lvl:9999}],AttributeModifiers:[{AttributeName:"generic.armor",Amount:4,Operation:0,Slot:"head",UUID:[I;143410808,719956162,-867506893,887778816]},{AttributeName:"generic.armor_toughness",Amount:1,Operation:0,Slot:"head",UUID:[I;-986245662,811733267,-709986029,204197489]}]} 1
#爆殺者の鎧
item replace entity @a[scores={Bommer = 1}] armor.chest with minecraft:leather_chestplate{display:{Name:"\"爆殺者の鎧\"",color:655104},Unbreakable:1,Enchantments:[{id:blast_protection,lvl:9999}],AttributeModifiers:[{AttributeName:"generic.armor",Amount:0.1,Operation:0,Slot:"chest",UUID:[I;143410808,719956162,-867506893,887778816]}]} 1
#爆殺者のレギンス
item replace entity @a[scores={Bommer = 1}] armor.legs with minecraft:leather_leggings{display:{Name:"\"爆殺者のレギンス\"",color:655104},Unbreakable:1,Enchantments:[{id:blast_protection,lvl:9999}],AttributeModifiers:[{AttributeName:"generic.armor",Amount:4,Operation:0,Slot:"legs",UUID:[I;143410808,719956162,-867506893,887778816]},{AttributeName:"generic.armor_toughness",Amount:1,Operation:0,Slot:"legs",UUID:[I;-986245662,811733267,-709986029,204197489]}]} 1
#爆殺者の靴
item replace entity @a[scores={Bommer = 1}] armor.feet with minecraft:leather_boots{display:{Name:"\"爆殺者の靴\"",color:655104},Unbreakable:1,Enchantments:[{id:feather_falling,lvl:999},{id:blast_protection,lvl:999}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.06,Operation:0,Slot:"feet",UUID:[I;989464837,-622566084,868579657,331752647]},{AttributeName:"generic.armor",Amount:4,Operation:0,Slot:"feet",UUID:[I;-794569070,146357213,569331944,-325361479]},{AttributeName:"generic.armor_toughness",Amount:2,Operation:0,Slot:"feet",UUID:[I;-784581538,998053716,-73721749,-994298569]}]} 1
#ボムフレア10
give @a[scores={Bommer = 1}] minecraft:parrot_spawn_egg{CanPlaceOn:["#minecraft:all"],HideFlags: 16,EntityTag:{id:"minecraft:slime",DeathTime:19,DeathLootTable:"0",Silent:1b,Invulnerable:1b,NoAI:1b,Size:0,CustomName:"\"ボムフレア\"",CustomNameVisible:0},display:{Name:"{\"text\":\"ボムフレア\",\"color\":\"gold\"}",Lore:['[{"text":"自分が爆発する"}]']}} 10
#ボムブレイク64
give @a[scores={Bommer = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:9,display:{Name:"{\"text\":\"ボムブレイク【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"全てのクリーパーを爆発させる。\",\"italic\":false,\"color\":\"white\"}"]}} 64
#ヒールⅡ 6
give @a[scores={Bommer = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:12,display:{Name:"{\"text\":\"ヒールⅡ\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"体力が回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 6
#克服20
give @a[scores={Bommer = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:4,display:{Name:"{\"text\":\"克服\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"付与されているデバフを解除する。\",\"italic\":false,\"color\":\"white\"}"]}} 20
#爆発矢64
give @a[scores={Bommer = 1}] tipped_arrow{CustomPotionEffects:[{Id:4b}],display:{Name:'{"text":"爆発矢","color":"red","bold":true}',Lore:['{"text":"着弾と同時に爆発する危険な矢","color":"dark_red","bold":true}']},HideFlags:32,CustomPotionColor:16711680} 64
#空爆矢64
give @a[scores={Bommer = 1}] tipped_arrow{CustomPotionEffects:[{Id:5b}],display:{Name:'{"text":"空爆の矢","color":"dark_blue","bold":true}',Lore:['{"text":"軌道上に空爆用クリーパーを召喚する矢","color":"dark_red","bold":true}']},HideFlags:32,CustomPotionColor:331263} 64
#感知式グレネード
give @a[scores={Bommer = 1}] minecraft:snowball{display:{Name:"{\"text\":\"感知式グレネード\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"壁や床を検知して即爆発するグレネード。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"壁に近いと投擲後即爆発する。\",\"italic\":false,\"color\":\"white\"}"]}} 4
#設置C4
give @a[scores={Bommer = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:30,display:{Name:"{\"text\":\"【設置】C4\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"C4を設置する\",\"italic\":false,\"color\":\"white\"}"]}} 10
#起爆C4
give @a[scores={Bommer = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:31,display:{Name:"{\"text\":\"【起爆】C4\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"C4を起爆する\",\"italic\":false,\"color\":\"white\"}"]}} 64
#奥義の杖
give @a[scores={Bommer = 1,Gokubaku = 0}] minecraft:carrot_on_a_stick{display:{Name:"\"奥義：極爆の創始\"",Lore:["\"一度しか使えない奥義。直線状に極爆を生成する。\""]},Enchantments:[{id:infinity,lvl:1}]}

attribute @a[scores={Bommer = 1},limit=1] minecraft:generic.max_health base set 20
effect give @a[scores={Bommer = 1}] minecraft:instant_health 1 10