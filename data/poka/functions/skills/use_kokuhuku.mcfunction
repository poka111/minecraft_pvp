#>poka:skills/use_kokuhuku
#克服(モデル:4)
playsound minecraft:block.glass.break player @s ~ ~ ~

##デバフのみを解除する
effect clear @s minecraft:slowness
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:jump_boost
effect clear @s minecraft:nausea
effect clear @s minecraft:blindness
effect clear @s minecraft:weakness
effect clear @s minecraft:poison
effect clear @s minecraft:wither
effect clear @s minecraft:glowing
effect clear @s minecraft:levitation

##トリガーの解除
advancement revoke @s only poka:use_kokuhuku