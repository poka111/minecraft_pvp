##map選択のファンクション(キングダム map:1)
scoreboard players set @a map 1
function poka:reset/reset_choose_map
tellraw @a "マップ：kingdom を選択しました"
playsound minecraft:block.wooden_button.click_on player @s ~ ~ ~ 900 1
setblock 13 -21 34 redstone_block replace
