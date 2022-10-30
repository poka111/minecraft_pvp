#>poka:skills/magic/explosion/apply


#クリーパー召喚
summon creeper ^ ^ ^15 {ExplosionRadius:4,Fuse:0,Invulnerable:1}
summon creeper ^7 ^ ^15 {ExplosionRadius:3,Fuse:0,Invulnerable:1}
summon creeper ^-7 ^ ^15 {ExplosionRadius:3,Fuse:0,Invulnerable:1}

#MP処理
scoreboard players remove @s MP 25

scoreboard players set @s R_click 0