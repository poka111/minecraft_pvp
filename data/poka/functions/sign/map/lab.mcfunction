##map選択のファンクション(lab map:7)
scoreboard players set @a map 7
function poka:reset/choose_map
tellraw @a "マップ：lab を選択しました"
playsound minecraft:block.wooden_button.click_on player @s ~ ~ ~
setblock 12 -22 34 redstone_block replace