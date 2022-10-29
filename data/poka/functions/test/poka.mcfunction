#>poka:test/poka

# scoreboard objectives add countZombie dummy "ゾンビをカウントするスコア"

#周囲16m以内のゾンビの数をカウントし、countZonbieに代入し、そのゾンビを@sに変更する
execute as @s store result score @s countZombie if entity @e[type=zombie,distance=..16] run execute as @e[type=zombie,distance=..16] at @s run function poka:test/damage
