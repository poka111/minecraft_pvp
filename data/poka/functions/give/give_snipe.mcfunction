#>poka:give/give_snipe

##スナイパーライフルを付与するファンクション
#スナイパーライフルを撃ったあと、それを取り上げて、スケジュールでこのファンクションを呼び出す
give @a[scores={sniper = 1}] minecraft:spyglass{CustomModelData:1,display:{Name:"{\"text\":\"スナイパーライフル\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"発射速度:2秒,リロード時間:4秒\",\"italic\":false,\"color\":\"white\"}"]}} 1