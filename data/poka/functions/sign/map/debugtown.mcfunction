##map選択のファンクション(デバッグ町 map:0)
scoreboard players set @a map 0
function poka:reset/choose_map
tellraw @a "マップ：debug town を選択しました"
playsound minecraft:block.wooden_button.click_on player @s ~ ~ ~ 900 1
setblock 14 -21 34 redstone_block replace
