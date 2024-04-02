tellraw @a[tag=hexenwerk.debug] ["",{"text":"[","color":"light_purple"},{"text":"DEBUG","color":"red"},{"text":"] ","color":"light_purple"},"Detected ",{"text":"Wand change","color": "yellow"}," in ",{"text":"Wand Crafter ","color": "yellow"},{"text":"at position","color":"white"},{"text":" [","color":"gold"},{"nbt":"Pos[0]","entity":"@s","color":"yellow"},", ",{"nbt":"Pos[1]","entity":"@s","color":"yellow"},", ",{"nbt":"Pos[2]","entity":"@s","color":"yellow"},{"text":"]","color":"gold"}," -> Blocking spell appliance for 1t"]
item replace block ~ ~ ~ container.6 with air
item replace block ~ ~ ~ container.15 with air
item replace block ~ ~ ~ container.24 with air
tag @s add hexenwerk.block.wand_crafter.block_appliance_1t
execute if items block ~ ~ ~ container.12 minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{hexenwerk:{id:"wand"}}] run function hexenwerk:block/wand_crafter/load_spells/main