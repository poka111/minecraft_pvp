#>poka:snipe

##スナイパーライフルを長押ししている時に呼び出されるfunction

#snipeResetの値を持っているとき(撃ったあと)ならば、snipe,snipeResetを初期化する
execute as @a[scores={snipeReset = 1..,sniper = 1}] at @s run scoreboard players set @s snipe 0
execute as @a[scores={snipeReset = 1..,sniper = 1}] at @s run scoreboard players set @s snipeReset 0

#長押しの際、発射可能状態でなければ、snipeをインクリメント
scoreboard players add @a[scores={canSnipe = 0,sniper = 1}] snipe 1
#スコアが20(1秒間長押し状態)になれば、効果音を鳴らす
execute as @a[scores={snipe = 20,sniper = 1}] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1000
#スコアが40(2秒間長押し状態)になれば、canSnipeの値をインクリメントして、長押し状態判定(snipe)を初期化
execute as @a[scores={snipe = 40..,sniper = 1}] at @s run scoreboard players set @s canSnipe 1
execute as @a[scores={snipe = 40..,sniper = 1}] at @s run scoreboard players set @s snipe 0
#トリガーを解除
advancement revoke @s only poka:snipe