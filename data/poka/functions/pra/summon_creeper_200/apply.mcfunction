#>poka:pra/summon_creeper_200/apply

#一時変数をインクリメント
scoreboard players add _ _ 1

summon minecraft:creeper ~ ~2 ~25 {Fuse:500}
execute if score _ _ < @p _ run function poka:pra/summon_creeper_200/apply
execute if score _ _ > @p _ run scoreboard players reset _ _
execute if score _ _ > @p _ run scoreboard players reset @a _