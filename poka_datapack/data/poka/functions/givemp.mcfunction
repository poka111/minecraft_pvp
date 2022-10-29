#魔法師　MP配布
execute as @a[scores={magician = 1}] run give @a[scores={magician = 1}] minecraft:nether_star{display:{Name:"\"魔力\""}} 8
execute as @a[scores={magician = 1}] run schedule function poka:givemp 60t

#魔弾士　MP配布
execute as @a[scores={Madansi = 1}] run give @a[scores={Madansi = 1}] minecraft:nether_star{display:{Name:"\"魔力\""}} 8
execute as @a[scores={Madansi = 1}] run schedule function poka:givemp 60t