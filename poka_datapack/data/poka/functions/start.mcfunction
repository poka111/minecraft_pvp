#全員をチームに参加
team join pvp @a

#デバッグ町(map=0)のリスポーン地点にTP
tp @a[scores={sniper = 1,map = 0}] 30 -14 89
tp @a[scores={Kizin = 1,map = 0}] 32 -14 89
tp @a[scores={Bommer = 1,map = 0}] 36 -14 89
tp @a[scores={Assassin = 1,map = 0}] 38 -14 89
tp @a[scores={Kenshi = 1,map = 0}] 40 -14 89
tp @a[scores={Youhei = 1,map = 0}] 42 -14 89
tp @a[scores={Lumber = 1,map = 0}] 44 -14 89
tp @a[scores={magician = 1,map = 0}] 34 -14 89
tp @a[scores={Madansi = 1,map = 0}] 28 -14 89
tp @a[scores={Kyoudan = 1,map = 0}] 46 -14 89

#デバッグ町(map=0)のスポーン地点設定
spawnpoint @a[scores={sniper = 1,map = 0}] 30 -14 89
spawnpoint @a[scores={Kizin = 1,map = 0}] 32 -14 89
spawnpoint @a[scores={Bommer = 1,map = 0}] 36 -14 89
spawnpoint @a[scores={Assassin = 1,map = 0}] 38 -14 89
spawnpoint @a[scores={Kenshi = 1,map = 0}] 40 -14 89
spawnpoint @a[scores={Youhei = 1,map = 0}] 42 -14 89
spawnpoint @a[scores={Lumber = 1,map = 0}] 44 -14 89
spawnpoint @a[scores={magician = 1,map = 0}] 34 -14 89
spawnpoint @a[scores={Madansi = 1,map = 0}] 28 -14 89
spawnpoint @a[scores={Kyoudan = 1,map = 0}] 46 -14 89


#TP後に10秒間、HP回復を付与
effect give @a minecraft:saturation 10 100

#パッシブ発動開始
function poka:passive

#開始用RSBを削除
setblock 11 -20 6 air


