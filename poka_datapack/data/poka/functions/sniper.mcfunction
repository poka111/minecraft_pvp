#所持アイテム削除
clear @a[scores={sniper = 1}]

#アイテム配布

#殲滅弓ヘカートⅡ
give @a[scores={sniper = 1}] spyglass 1
#give @a[scores={sniper = 1}] minecraft:bow{display:{Name:"\"殲滅弓へカートⅡ\"",Lore:["\"敵を消し去る弓\""]},Unbreakable:1,HideFlags:3,Enchantments:[{id:power,lvl:255}],AttributeModifiers:[{AttributeName:"generic.max_health",Amount:-9999,Operation:0,UUID:[I;-732581478,-984845830,998140540,-732265268]},{AttributeName:"generic.movement_speed",Amount:-9999,Operation:0,UUID:[I;648447463,-856882659,-901854562,-248191716]}]} 1
#スナイパーの兜
item replace entity @a[scores={sniper = 1}] armor.head with minecraft:leather_helmet{display:{Name:"\"スナイパーの兜\"",color:16777215},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:2,Operation:0,Slot:"head",UUID:[I;143410808,719956162,-867506893,887778816]}]} 1
#スナイパーの鎧
item replace entity @a[scores={sniper = 1}] armor.chest with minecraft:leather_chestplate{display:{Name:"\"スナイパーの鎧\"",color:16777215},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:2,Operation:0,Slot:"chest",UUID:[I;143410808,719956162,-867506893,887778816]}]} 1
#スナイパーのレギンス
item replace entity @a[scores={sniper = 1}] armor.legs with minecraft:leather_leggings{display:{Name:"\"スナイパーのレギンス\"",color:16777215},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:2,Operation:0,Slot:"legs",UUID:[I;143410808,719956162,-867506893,887778816]}]} 1
#スナイパーの靴
item replace entity @a[scores={sniper = 1}] armor.feet with minecraft:leather_boots{display:{Name:"\"スナイパーの靴\"",color:16777215},Unbreakable:1,Enchantments:[{id:feather_falling,lvl:999}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.04,Operation:0,Slot:"feet",UUID:[I;989464837,-622566084,868579657,331752647]},{AttributeName:"generic.armor",Amount:2,Operation:0,Slot:"feet",UUID:[I;-794569070,146357213,569331944,-325361479]}]} 1
#エンダーパール16
give @a[scores={sniper = 1}] minecraft:ender_pearl 16
#神速4
give @a[scores={sniper = 1}] minecraft:firework_rocket{CustomModelData:3,display:{Name:"{\"text\":\"神速\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"3秒間、速度を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}"]}} 4
#克服20
give @a[scores={sniper = 1}] minecraft:firework_rocket{CustomModelData:4,display:{Name:"{\"text\":\"克服\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"付与されているデバフを解除する。\",\"italic\":false,\"color\":\"white\"}"]}} 20
#跳躍20
give @a[scores={sniper = 1}] minecraft:firework_rocket{CustomModelData:7,display:{Name:"{\"text\":\"跳躍\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"3秒間、跳躍力が上昇する。\",\"italic\":false,\"color\":\"white\"}"]}} 20
#レーダービジョン5
give @a[scores={sniper = 1}] minecraft:firework_rocket{CustomModelData:1,display:{Name:"{\"text\":\"レーダービジョン\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"敵全員に10秒間発光を付与する。\",\"italic\":false,\"color\":\"white\"}"]}} 5
#奥義：四線夜纏一弓
give @a[scores={sniper = 1,ULT_sisen = 0}] minecraft:firework_rocket{CustomModelData:21,display:{Name:"{\"text\":\"四線夜纏一弓【奥義】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"15秒間、解除不可能のデバフを付与し、相手を宙に浮かせる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"更に、使用後は体力が上昇する。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#体力を設定(6)
attribute @a[scores={sniper = 1},limit=1] minecraft:generic.max_health base set 6
effect give @a[scores={sniper = 1}] minecraft:instant_health 1 0