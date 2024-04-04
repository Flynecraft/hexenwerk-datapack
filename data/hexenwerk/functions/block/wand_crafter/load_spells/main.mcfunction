tellraw @a[tag=hexenwerk.debug] ["",{"text":"[","color":"light_purple"},{"text":"DEBUG","color":"red"},{"text":"] ","color":"light_purple"},{"text":"Loading spells","color": "yellow"}," in ",{"text":"Wand Crafter ","color": "yellow"},{"text":"at position","color":"white"},{"text":" [","color":"gold"},{"nbt":"Pos[0]","entity":"@s","color":"yellow"},", ",{"nbt":"Pos[1]","entity":"@s","color":"yellow"},", ",{"nbt":"Pos[2]","entity":"@s","color":"yellow"},{"text":"]","color":"gold"}]


execute unless data block ~ ~ ~ Items[{Slot:12b}].components."minecraft:custom_data".hexenwerk.spell_storage[{slot:1}] run function hexenwerk:block/wand_crafter/load_spells/1
execute unless data block ~ ~ ~ Items[{Slot:12b}].components."minecraft:custom_data".hexenwerk.spell_storage[{slot:2}] run function hexenwerk:block/wand_crafter/load_spells/2
execute unless data block ~ ~ ~ Items[{Slot:12b}].components."minecraft:custom_data".hexenwerk.spell_storage[{slot:3}] run function hexenwerk:block/wand_crafter/load_spells/3
