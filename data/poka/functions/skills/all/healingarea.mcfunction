##ヒーリングエリアを召喚する
summon area_effect_cloud ~ ~ ~ {Particle:"entity_effect",CustomNameVisible:1b,ReapplicationDelay:20,Radius:3f,Duration:200,Age:0,WaitTime:0,Color:16712501,Effects:[{Id:6,Amplifier:1b,Duration:1,ShowParticles:1b}],CustomName:'{"text":"ヒーリングエリア","color":"red","bold":true}'}

##trigger解除
advancement revoke @s only poka:healingarea