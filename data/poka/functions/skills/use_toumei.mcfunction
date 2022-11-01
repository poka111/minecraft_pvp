#>poka:skills/use_toumei

##未実装・透明になるスキル(アサシンのスキル)
execute as @s[scores={toumei = 0}] run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~
advancement revoke @s only poka:use_toumei
execute as @s[scores={toumei = 0}] run scoreboard players set @s toumei 1