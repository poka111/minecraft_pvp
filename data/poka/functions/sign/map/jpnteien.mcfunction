##map選択のファンクション(日本庭園 map:6)
scoreboard players set @a map 6
function poka:reset/choose_map
tellraw @a "マップ：日本庭園 を選択しました"
playsound minecraft:block.wooden_button.click_on player @s ~ ~ ~ 900 1
setblock 13 -22 34 redstone_block replace
