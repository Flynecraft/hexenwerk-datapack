tag @s remove hexenwerk.block.wand_crafter.block_appliance_1t
execute if items block ~ ~ ~ container.12 minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{hexenwerk:{id:"wand"}}] if entity @s[tag=!hexenwerk.block.wand_crafter.has_wand] run function hexenwerk:block/wand_crafter/return_item_to_player/input_slots/add_wand

execute if items block ~ ~ ~ container.12 minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{hexenwerk:{id:"wand"}}] run function hexenwerk:block/wand_crafter/if_wand

execute unless items block ~ ~ ~ container.12 minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{hexenwerk:{id:"wand"}}] run function hexenwerk:block/wand_crafter/unless_wand

execute unless items block ~ ~ ~ container.12 minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{hexenwerk:{id:"wand"}}] if entity @s[tag=hexenwerk.block.wand_crafter.has_wand] run function hexenwerk:block/wand_crafter/return_item_to_player/input_slots/remove_wand

execute unless items block ~ ~ ~ container.12 minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{hexenwerk:{id:"wand"}}] run tag @s remove hexenwerk.block.wand_crafter.has_wand

execute unless entity @a[distance=..6] run function hexenwerk:block/wand_crafter/close
