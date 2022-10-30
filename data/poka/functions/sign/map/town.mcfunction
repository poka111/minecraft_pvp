##map選択のファンクション(station map:3)
scoreboard players set @a map 3
function poka:reset/choose_map
tellraw @a "マップ：town を選択しました"
playsound minecraft:block.wooden_button.click_on player @s ~ ~ ~
setblock 11 -21 34 redstone_block replace