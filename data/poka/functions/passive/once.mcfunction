#>poka:passive/once
##一度のみ実行するパッシブスキル(あとはscheduleで再帰管理)

##MP付与開始
execute as @a[scores={passive = 0}] run function poka:give/givemp_madan
execute as @a[scores={passive = 0}] run function poka:give/givemp_magician

##ブリンク付与開始
execute as @a[scores={passive = 0}] run function poka:give/blink

##暗殺者　発光パッシブ発動開始
execute as @a[scores={passive = 0}] run execute as @a[scores={Assassin = 1}] run function poka:passive/assassin_passive

##パッシブ実行後フラグ
execute as @a[scores={passive = 0}] run scoreboard players set @a[scores={passive = 0}] passive 1