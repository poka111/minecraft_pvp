#>poka:give/blink

##テレポーター　ブリンク配布
execute as @a[scores={Teleporter = 1}] at @s run scoreboard players add @s blink 3
execute as @a[scores={Teleporter = 1}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.1 1
##再帰
execute as @a[scores={Teleporter = 1}] run schedule function poka:give/blink 60t