##ゲーム開始・フェーズ2

title @a title ""
title @a subtitle "全員のスポーン設定が終了したので、試合を開始します。"

#全員のスポーンポイントのマーカー削除
kill @e[type=minecraft:armor_stand,tag=spawnpoint]

schedule function poka:start_count3 1s
schedule function poka:start_count2 2s
schedule function poka:start_count1 3s
schedule function poka:start 4s