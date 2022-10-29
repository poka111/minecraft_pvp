#>poka:test/apply


##/scoreboard objectives add damage dummy "与えるダメージ"

#ゾンビに対して、ダメージを与え、パーティクル表示などを行う(@s->周囲16mのゾンビ)


#対象のゾンビにパーティクル表示
particle minecraft:explosion ~ ~ ~

##ダメージ計算

execute if data storage damage if entity @s[team=!Null] run function score_damage:core/attack
