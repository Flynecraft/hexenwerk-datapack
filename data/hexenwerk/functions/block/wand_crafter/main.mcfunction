tag @s remove hexenwerk.block.wand_crafter.block_appliance_1t
execute if items block ~ ~ ~ container.12 minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{hexenwerk:{id:"wand"}}] unless data block ~ ~ ~ Items[{Slot:12b}].components."minecraft:custom_data".hexenwerk.uuid run function hexenwerk:block/wand_crafter/assign_wand_uuid

execute store result score @s hexenwerk.block.wand_crafter.wand_uuid run data get block ~ ~ ~ Items[{Slot:12b}].components."minecraft:custom_data".hexenwerk.uuid

execute unless score @s hexenwerk.block.wand_crafter.wand_uuid.old = @s hexenwerk.block.wand_crafter.wand_uuid run function hexenwerk:block/wand_crafter/wand_change

execute store result score @s hexenwerk.block.wand_crafter.wand_uuid.old run data get block ~ ~ ~ Items[{Slot:12b}].components."minecraft:custom_data".hexenwerk.uuid

execute if items block ~ ~ ~ container.12 minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{hexenwerk:{id:"wand"}}] unless entity @s[tag=hexenwerk.block.wand_crafter.block_appliance_1t] run function hexenwerk:block/wand_crafter/apply_spells/main 