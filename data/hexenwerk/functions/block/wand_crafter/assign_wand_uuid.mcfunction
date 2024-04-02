execute store result storage hexenwerk:temp uuid int 1 run random value 1..2147483647
item modify block ~ ~ ~ container.12 hexenwerk:random_uuid

tellraw @a[tag=hexenwerk.debug] ["",{"text":"[","color":"light_purple"},{"text":"DEBUG","color":"red"},{"text":"] ","color":"light_purple"},"Assigned UUID (",{"nbt":"uuid","storage":"hexenwerk:temp","color":"yellow"}, ") to Wand in Crafter ",{"text":"at position","color":"white"},{"text":" [","color":"gold"},{"nbt":"Pos[0]","entity":"@s","color":"yellow"},", ",{"nbt":"Pos[1]","entity":"@s","color":"yellow"},", ",{"nbt":"Pos[2]","entity":"@s","color":"yellow"},{"text":"]","color":"gold"}]
