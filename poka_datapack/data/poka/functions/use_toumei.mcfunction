execute as @s[scores={toumei = 0}] run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 999
advancement revoke @s only poka:use_toumei
execute as @s[scores={toumei = 0}] run scoreboard players set @s toumei 1