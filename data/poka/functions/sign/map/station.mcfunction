##map選択のファンクション(station map:2)
scoreboard players set @a map 2
function poka:reset/reset_choose_map
tellraw @a "マップ：station を選択しました"
playsound minecraft:block.wooden_button.click_on player @s ~ ~ ~ 900 1
setblock 12 -21 34 redstone_block replace