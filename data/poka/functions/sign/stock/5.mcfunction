##ゲームストックを5に設定
scoreboard players set @a deaths 0
tellraw @a "ストックを5に設定しました"
playsound minecraft:block.wooden_button.click_on player @s ~ ~ ~ 900 1
function poka:reset/reset_choose_stock
setblock 14 -21 22 redstone_block replace
