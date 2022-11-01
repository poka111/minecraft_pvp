#>poka:skills/use_bombbreak
#ボムブレイク(モデル：9)
effect give @s minecraft:resistance 1 100
execute as @e[type=minecraft:creeper] at @s run summon creeper ~ ~ ~ {ExplosionRadius:3,Fuse:0,ignited:true}
give @s tipped_arrow{CustomPotionEffects:[{Id:5b}],display:{Name:'{"text":"空爆の矢","color":"dark_blue","bold":true}',Lore:['{"text":"軌道上に空爆用クリーパーを召喚する矢","color":"dark_red","bold":true}']},HideFlags:32,CustomPotionColor:331263} 1
give @s tipped_arrow{CustomPotionEffects:[{Id:4b}],display:{Name:'{"text":"爆発矢","color":"red","bold":true}',Lore:['{"text":"着弾と同時に爆発する危険な矢","color":"dark_red","bold":true}']},HideFlags:32,CustomPotionColor:16711680} 1

execute as @s[nbt={SelectedItem:{id:"minecraft:firework_rocket",tag:{CustomModelData:9}}}] run item replace entity @s weapon.mainhand with minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:9,display:{Name:"{\"text\":\"ボムブレイク【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"全てのクリーパーを爆発させる。\",\"italic\":false,\"color\":\"white\"}"]}} 64
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:firework_rocket",tag:{CustomModelData:9}}]}] run item replace entity @s weapon.offhand with minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:9,display:{Name:"{\"text\":\"ボムブレイク【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"全てのクリーパーを爆発させる。\",\"italic\":false,\"color\":\"white\"}"]}} 64

advancement revoke @s only poka:use_bombbreak