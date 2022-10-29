execute as @e[type=minecraft:armor_stand,tag=c4] at @s run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:5,Fuse:0,Invulnerable:1}
execute as @e[type=minecraft:armor_stand,tag=c4] at @s run setblock ~ ~ ~ air
execute as @e[type=minecraft:armor_stand,tag=c4] at @s run kill @e[type=minecraft:armor_stand,tag=c4]

kill @e[type=minecraft:firework_rocket]

advancement revoke @s only poka:use_break_c4