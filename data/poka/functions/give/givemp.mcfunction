#魔法師　MP配布
execute as @a[scores={magician = 1}] at @s run scoreboard players add @s MP 8
execute as @a[scores={magician = 1}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.1 1
execute as @a[scores={magician = 1}] run schedule function poka:give/givemp 60t

#魔弾士　MP配布
execute as @a[scores={Madansi = 1}] at @s run scoreboard players add @s MP 8
execute as @a[scores={Madansi = 1}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.1 1
execute as @a[scores={Madansi = 1}] run schedule function poka:give/givemp 60t