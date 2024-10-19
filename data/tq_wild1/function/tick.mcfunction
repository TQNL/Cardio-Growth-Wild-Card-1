execute as @a[predicate=tq_wild1:sneaking] unless data entity @s {attributes:[{id:"minecraft:scale",base:0.25d}]} run function tq_wild1:shrink with entity @s
execute as @a[predicate=tq_wild1:jumping] unless data entity @s {attributes:[{id:"minecraft:scale",base:3.0d}]} run function tq_wild1:grow with entity @s
# to do: exlcude doing both
# to do: clear out /say
