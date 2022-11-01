##ゲームストックを2に設定
scoreboard players set @a deaths 3
tellraw @a "ストックを2に設定しました"
playsound minecraft:block.wooden_button.click_on player @s ~ ~ ~ 900 1
function poka:reset/choose_stock
setblock 11 -21 22 redstone_block replace