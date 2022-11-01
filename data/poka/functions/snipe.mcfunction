execute as @a[scores={snipeReset = 1..,sniper = 1}] run scoreboard players set @a[scores={snipeReset = 1..,sniper = 1}] snipe 0
execute as @a[scores={snipeReset = 1..,sniper = 1}] run scoreboard players set @a[scores={snipeReset = 1..,sniper = 1}] snipeReset 0
scoreboard players add @a[scores={canSnipe = 0,sniper = 1}] snipe 1
execute as @a[scores={snipe = 20,sniper = 1}] run playsound minecraft:ui.button.click master @a[scores={snipe = 20,sniper = 1}] ~ ~ ~ 1000
#execute as @a[scores={snipe = 40,sniper = 1}] run playsound minecraft:ui.button.click master @a[scores={snipe = 40,sniper = 1}] ~ ~ ~ 1000
#execute as @a[scores={snipe = 60,sniper = 1}] run playsound minecraft:ui.button.click master @a[scores={snipe = 60,sniper = 1}] ~ ~ ~ 1000
execute as @a[scores={snipe = 40..,sniper = 1}] run scoreboard players set @a[scores={snipe = 40..,sniper = 1}] canSnipe 1
execute as @a[scores={snipe = 40..,sniper = 1}] run scoreboard players set @a[scores={snipe = 40..,sniper = 1}] snipe 0
advancement revoke @s only poka:snipe