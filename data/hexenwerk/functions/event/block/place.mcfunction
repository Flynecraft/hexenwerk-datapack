execute if entity @s[tag=hexenwerk.block.type.magical_crafting_table] run function hexenwerk:block/magical_crafting_table/place

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[","color":"light_purple"},{"text":"DEBUG","color":"red"},{"text":"] ","color":"light_purple"},"Triggered ",{"text":"block","color":"yellow"},{"text":"/","color":"gold"},{"text":"place","color":"yellow"},{"text":" at position","color":"white"},{"text":" [","color":"gold"},{"nbt":"Pos[0]","entity":"@s","color":"yellow"},", ",{"nbt":"Pos[1]","entity":"@s","color":"yellow"},", ",{"nbt":"Pos[2]","entity":"@s","color":"yellow"},{"text":"]","color":"gold"}]
kill @s