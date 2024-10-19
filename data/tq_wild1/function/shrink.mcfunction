execute store result score @s tq_wild_card1_scale run attribute @s minecraft:scale get 81920
execute if score @s tq_wild_card1_scale matches ..20480 run return run scoreboard players reset @s tq_wild_card1_scale
scoreboard players remove @s tq_wild_card1_scale 99
execute if score @s tq_wild_card1_scale matches ..20480 run scoreboard players set @s tq_wild_card1_scale 20480

$execute store result storage tq_wild1:scaler modifier."$(UUID)".add_value double 0.00001220703 run scoreboard players get @s tq_wild_card1_scale
$function tq_wild1:shrink2 with storage tq_wild1:scaler modifier."$(UUID)"

scoreboard players reset @s tq_wild_card1_scale
# storage wont get reset to save on command lag (its laggy enough as is (pls mojang let us initialise macro function with scoreboards))
