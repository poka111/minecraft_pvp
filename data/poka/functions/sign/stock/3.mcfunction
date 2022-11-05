##ゲームストックを3に設定
scoreboard players set @a deaths 2
tellraw @a "ストックを3に設定しました"
playsound minecraft:block.wooden_button.click_on player @s ~ ~ ~
function poka:reset/choose_stock
setblock 12 -21 22 redstone_block replace