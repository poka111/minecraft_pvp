scoreboard players set @s skill_RaderVision 1

#レーダービジョン(モデル：1)
execute as @a[scores={skill_RaderVision = 1..}] run effect give @a[scores={skill_RaderVision = 0}] minecraft:glowing 10 0 true
execute as @a[scores={skill_RaderVision = 1..}] run playsound minecraft:block.enchantment_table.use player @a[scores={skill_RaderVision = 1..}] ~ ~ ~ 900
execute as @a[scores={skill_RaderVision = 1..}] run scoreboard players set @a[scores={skill_RaderVision = 1..}] skill_RaderVision 0

advancement revoke @s only poka:use_radervision