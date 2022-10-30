#変数初期化
scoreboard players reset _ _
scoreboard players reset @a _

#プレイヤーの変数に上限数を設定する
scoreboard players set @a _ 200

##apply呼び出し
function poka:pra/summon_creeper_200/apply