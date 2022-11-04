#>poka:game/dead

##残機が0になった人にする処理(@s->残機が0になった人)


gamemode spectator @s
title @s title {"text":"残機が無くなりました"}
clear @s
scoreboard players set @s dead 1