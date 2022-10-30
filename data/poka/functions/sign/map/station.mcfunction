##map選択のファンクション(station map:2)
scoreboard players set @a map 2
function poka:reset/choose_map
tellraw @a "マップ：station を選択しました"
playsound minecraft:block.wooden_button.click_on player @s ~ ~ ~
setblock 12 -21 34 redstone_block replace