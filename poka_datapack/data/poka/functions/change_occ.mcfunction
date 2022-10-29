#このファンクションは、訓練場で使用するファンクションである。
#職業を変える際のリセット等を一括で行う。スコアリセットも実行する。

function poka:reset_score
clear @p
gamemode survival @p
attribute @p[scores={Assassin = 1},limit=1] minecraft:generic.max_health base set 20
attribute @p[scores={sniper = 1},limit=1] minecraft:generic.max_health base set 20
tp @p -55 -22 38