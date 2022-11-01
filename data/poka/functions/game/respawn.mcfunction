#>poka:game/respawn
##リスポーン時に実行するファンクション(@s->リスポーンした人)
clear @s
function poka:give/reget_occitem
effect give @s minecraft:regeneration 10 200 true
effect give @s minecraft:resistance 10 5 true
tag @s add respawn

schedule function poka:game/delete_tag_a 10s