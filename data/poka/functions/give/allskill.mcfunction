#>poka:give/allskill
#全てのスキルアイテムの配布コマンド
#なお、実際に使用することはなく、主にバックアップ用、その他使用時のコピペ用に使用する


#テンプレート
# give @p minecraft:firework_rocket{CustomModelData:〇,display:{Name:"{\"text\":\"〇〇〇〇〇〇\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"〇〇〇〇〇\",\"italic\":false,\"color\":\"white\"}"]}} 1
#                                                モデル番号                         アイテム名                                  色　　　　　　　　　　　　　　説明文１行目　　　　　　                  　色                     

#説明文2行用テンプレート
# give @p minecraft:firework_rocket{CustomModelData:〇,display:{Name:"{\"text\":\"〇〇〇〇〇〇\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"〇〇〇〇〇\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"〇〇〇〇〇\",\"italic\":false,\"color\":\"white\"}"]}} 1
#                                                モデル番号　　　　　　　　　　　　　　アイテム名　　　　　　　　                 　色　　　　　　　　　　　　　　説明文１行目                      　　　　　色                  説明文2行目                                 色

#モデル1,レーダービジョン
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:1,display:{Name:"{\"text\":\"レーダービジョン\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"敵全員に10秒間発光を付与する。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル2,ファランクス
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:2,display:{Name:"{\"text\":\"ファランクス\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"7秒間、被ダメージを80%カットする。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル3,神速
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:3,display:{Name:"{\"text\":\"神速\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"3秒間、速度を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル4,克服
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:4,display:{Name:"{\"text\":\"克服\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"付与されているデバフを解除する。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル5,再生
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:5,display:{Name:"{\"text\":\"再生\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"30秒間、少し体力が回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル6,超再生
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:6,display:{Name:"{\"text\":\"超再生\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"30秒間、かなり体力が回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル7,跳躍
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:7,display:{Name:"{\"text\":\"跳躍\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"3秒間、跳躍力が上昇する。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル8,瞬歩
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:8,display:{Name:"{\"text\":\"瞬歩\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"1秒間、速度が上昇する。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル9,ボムブレイク
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:9,display:{Name:"{\"text\":\"ボムブレイク【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"全てのクリーパーを爆発させる。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル10,ボムフレア(モデル未作成)
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:10,display:{Name:"{\"text\":\"ボムフレア\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"自身が爆発する。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル11,ヒールⅠ
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:11,display:{Name:"{\"text\":\"ヒールⅠ\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"体力が少し回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル12,ヒールⅡ
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:12,display:{Name:"{\"text\":\"ヒールⅡ\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"体力が回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル13,ヒールⅢ
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:13,display:{Name:"{\"text\":\"ヒールⅢ\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"体力がかなり回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル14,天命の風
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:14,display:{Name:"{\"text\":\"天命の風\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"体力を少し上昇させる。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル15,天命の息吹
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:15,display:{Name:"{\"text\":\"天命の息吹\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"体力を上昇させる。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル16,天命の創造
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:16,display:{Name:"{\"text\":\"天命の創造\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"体力をかなり上昇させる。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル17,鬼人化・速
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:17,display:{Name:"{\"text\":\"鬼人化・速【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に速度を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル18,鬼人化・剛
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:18,display:{Name:"{\"text\":\"鬼人化・剛【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に被ダメージを60%カットする。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル19,鬼人化・力
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:19,display:{Name:"{\"text\":\"鬼人化・力【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に攻撃力を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル20,鬼人化・跳
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:20,display:{Name:"{\"text\":\"鬼人化・跳【無限スキル】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"一時的に跳躍力を大幅に上昇させる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル21,奥義：鬼神化
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:21,display:{Name:"{\"text\":\"鬼神化【奥義】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"30秒間、鬼神となり、多くのバフを得ることができる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"効果終了後、反動をくらってしまう。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル21,奥義：虚視無双
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:21,display:{Name:"{\"text\":\"虚視無双【奥義】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"敵全員に15秒間、麻痺を付与する。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"更に、効果中は移動速度が上昇する。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル21,奥義：四線夜纏一弓
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:21,display:{Name:"{\"text\":\"四線夜纏一弓【奥義】\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"15秒間、解除不可能のデバフを付与し、相手を宙に浮かせる。\",\"italic\":false,\"color\":\"white\"}","{\"text\":\"更に、使用後は体力が上昇する。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル22,食料回復
#give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:22,display:{Name:"{\"text\":\"食料回復\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"使用すると食料ゲージを回復する。\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル30,C4設置
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:30,display:{Name:"{\"text\":\"【設置】C4\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"C4を設置する\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル31,C4起爆
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:31,display:{Name:"{\"text\":\"【起爆】C4\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"C4を起爆する\",\"italic\":false,\"color\":\"white\"}"]}} 1

#モデル32,スポーンポイント設定
give @p minecraft:firework_rocket{CanPlaceOn:["#minecraft:all"],HideFlags: 16,CustomModelData:32,display:{Name:"{\"text\":\"スポーン地点を設定\",\"italic\":false,\"color\":\"gold\"}",Lore:["{\"text\":\"使用した場所をスポーン地点に設定する\",\"italic\":false,\"color\":\"white\"}"]}} 1