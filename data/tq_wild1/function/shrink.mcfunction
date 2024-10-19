execute store result score @s tq_wild_card1_scale run attribute @s minecraft:scale get 100
scoreboard players remove @s tq_wild_card1_scale 5

execute summon area_effect_cloud store result entity @s Motion[1] int 0.01 run scoreboard players get @p tq_wild_card1_scale
data merge entity @n[type=area_effect_cloud,distance=0.1] {Tags:['tq_wild_card1_scaler'],Particle:{type:"block",block_state:"minecraft:air"},WaitTime:1}

function tq_wild1:shrink2 with entity @n[type=area_effect_cloud,distance=0.1]

scoreboard players reset @s tq_wild_card1_scale
