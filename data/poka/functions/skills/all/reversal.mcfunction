#>poka:skills/all/reversal

##このスキルは選択スキルである。
##自分以外の全員の視点を反転(90度回転)させるスキル
##スキルモデル:51

##視点を反転
tp @s ~ ~ ~ ~180 ~
execute as @e at @s run tp @s ~ ~ ~ ~180 ~

##トリガー解除
advancement revoke @s only poka:reversal