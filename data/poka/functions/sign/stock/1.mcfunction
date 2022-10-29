##ゲームストックを1に設定
scoreboard players set @a deaths 4
tellraw @a "ストックを1に設定しました"
playsound minecraft:block.wooden_button.click_on player @s ~ ~ ~ 900 1
function poka:reset/reset_choose_stock
setblock 10 -21 22 redstone_block replace