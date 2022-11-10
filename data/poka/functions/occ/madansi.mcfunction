#所持アイテム削除
clear @a[scores={Madansi = 1}]

#魔弾士の兜
item replace entity @a[scores={Madansi = 1}] armor.head with minecraft:leather_helmet{display:{Name:"\"魔弾士の兜\"",color:16711888},Unbreakable:1,HideFlags:4,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Amount:1.0,Operation:0,Slot:"head",UUID:[I;-678450245,-698526209,247239723,-158174080]}]}

#魔弾士のローブ(上)
item replace entity @a[scores={Madansi = 1}] armor.chest with minecraft:leather_chestplate{display:{Name:"\"魔弾士のローブ(上)\"",color:16711888},Unbreakable:1,HideFlags:4}

#魔弾士のローブ(下)
item replace entity @a[scores={Madansi = 1}] armor.legs with minecraft:leather_leggings{display:{Name:"\"魔弾士のローブ(下)\"",color:16711888},Unbreakable:1,HideFlags:4}

#魔弾士の靴
item replace entity @a[scores={Madansi = 1}] armor.feet with minecraft:leather_boots{display:{Name:"\"魔弾士の靴\"",color:16711888},Unbreakable:1,HideFlags:4,Enchantments:[{id:swift_sneak,lvl:3}],AttributeModifiers:[{AttributeName:"generic.max_health",Amount:40,Operation:0,Slot:"feet",UUID:[I;321126536,524818181,690927909,636882017]}]}

#魔弾士の杖
give @a[scores={Madansi = 1}] minecraft:carrot_on_a_stick{display:{Name:"\"魔弾士の杖\"",Lore:["\"魔弾士が使う杖。クリックするとMP2消費で魔弾を放つ\""]},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.2,Operation:0,Slot:"mainhand",UUID:[I;-911795137,878714578,-233691550,-288098387]}]}

#再生 1
give @a[scores={Madansi = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:5,display:{Name:"{\"text\":\"再生\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"30秒間、少し体力が回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#魔法瓶(MP:50回復)×2
give @a[scores={Madansi = 1}] minecraft:potion{Potion:thick,CustomPotionColor:15597823,display:{Name:"\"魔法瓶\"",Lore:["\"飲むと魔力が少し回復する液体\""]},HideFlags:34,CustomPotionEffects:[{Id:15,Amplifier:0,Duration:20,ShowParticles:false}]}
give @a[scores={Madansi = 1}] minecraft:potion{Potion:thick,CustomPotionColor:15597823,display:{Name:"\"魔法瓶\"",Lore:["\"飲むと魔力が少し回復する液体\""]},HideFlags:34,CustomPotionEffects:[{Id:15,Amplifier:0,Duration:20,ShowParticles:false}]}

#レーダービジョン 5
give @a[scores={Madansi = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:1,display:{Name:"{\"text\":\"レーダービジョン\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"敵全員に10秒間発光を付与する。\",\"italic\":false,\"color\":\"white\"}"]}} 5

#神速 5
give @a[scores={Madansi = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:3,display:{Name:"{\"text\":\"神速\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"3秒間、速度を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#天命の創造 1
give @a[scores={Madansi = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:16,display:{Name:"{\"text\":\"天命の創造\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"体力をかなり上昇させる。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#ヒールⅠ 2
give @a[scores={Madansi = 1}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:11,display:{Name:"{\"text\":\"ヒールⅠ\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"体力が少し回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 2

#MPを付与
scoreboard players set @a[scores={Madansi = 1}] MP 50
#奥義：無限魔装弾
give @a[scores={Madansi = 1,ULT_Madansi = 0}] minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:21,display:{Name:"{\"text\":\"無限魔装弾【奥義】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"30秒間、魔力が無制限になる。\",\"italic\":false,\"color\":\"white\"}"]}} 1

attribute @a[scores={Madansi = 1},limit=1] minecraft:generic.max_health base set 20
effect give @a[scores={Madansi = 1}] minecraft:instant_health 1 10