#>poka:skills/use_radervision
scoreboard players set @s skill_RaderVision 1

#レーダービジョン(モデル：1)
effect give @a[scores={skill_RaderVision = 0}] minecraft:glowing 10 0 true
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~
playsound minecraft:block.bamboo.hit player @a[scores={skill_RaderVision = 0}] ~ ~ ~
scoreboard players set @s skill_RaderVision 0

advancement revoke @s only poka:use_radervision