##map選択のファンクション(server room map:5)
scoreboard players set @a map 5
function poka:reset/choose_map
tellraw @a "マップ：server room を選択しました"
playsound minecraft:block.wooden_button.click_on player @s ~ ~ ~ 900 1
setblock 14 -22 34 redstone_block replace