##ゲームストックを1に設定
scoreboard players set @a deaths 4
tellraw @a "ストックを1に設定しました"
playsound minecraft:block.wooden_button.click_on player @s ~ ~ ~
function poka:reset/choose_stock
setblock 10 -21 22 redstone_block replace