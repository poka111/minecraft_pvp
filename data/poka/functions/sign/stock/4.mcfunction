##ゲームストックを4に設定
scoreboard players set @a deaths 1
tellraw @a "ストックを4に設定しました"
playsound minecraft:block.wooden_button.click_on player @s ~ ~ ~
function poka:reset/choose_stock
setblock 13 -21 22 redstone_block replace