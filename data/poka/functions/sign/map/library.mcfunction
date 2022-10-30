##map選択のファンクション(library map:4)
scoreboard players set @a map 4
function poka:reset/choose_map
tellraw @a "マップ：library を選択しました"
playsound minecraft:block.wooden_button.click_on player @s ~ ~ ~
setblock 10 -21 34 redstone_block replace