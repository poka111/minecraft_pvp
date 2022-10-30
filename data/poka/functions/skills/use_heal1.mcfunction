#>poka:skills/use_heal1
#ヒールⅠ(モデル:11)
effect give @s minecraft:instant_health 1 0 false
playsound minecraft:enchant.thorns.hit player @s ~ ~ ~
particle minecraft:heart ~ ~1 ~ 0.4 0.4 0.4 1 4 force @a

advancement revoke @s only poka:use_heal1