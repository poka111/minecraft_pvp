#>poka:change_occ
##このファンクションは、訓練場で使用するファンクションである。
##職業を変える際のリセット等を一括で行う。スコアリセットも実行する。

function poka:reset/score
clear @s
gamemode adventure @s
attribute @s minecraft:generic.max_health base set 20
tp @s -98 -22 38