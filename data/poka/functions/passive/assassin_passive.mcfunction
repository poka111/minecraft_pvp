##アサシンのパッシブスキル(20秒に1回、2秒間自身以外に発光付与)
execute as @a[scores={Assassin = 1}] run effect give @e[scores={Assassin = 0}] minecraft:glowing 4 0 true
execute as @a[scores={Assassin = 1}] run effect give @e[scores={Assassin = 0}] minecraft:blindness 4 0 true
execute as @a[scores={Assassin = 1}] run advancement grant @a[scores={Assassin = 1}] only poka:use_kokuhuku
execute as @a[scores={Assassin = 1}] run schedule function poka:passive/assassin_passive 400t

