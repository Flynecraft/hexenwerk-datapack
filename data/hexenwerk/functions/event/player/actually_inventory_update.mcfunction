function hexenwerk:mechanic/mana/modifiers/mana_max/check
function hexenwerk:mechanic/mana/modifiers/mana_regen/check
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[","color":"light_purple"},{"text":"DEBUG","color":"red"},{"text":"] ","color":"light_purple"},{"selector":"@s","color":"yellow"}," triggered ",{"text":"player","color":"yellow"},{"text":"/","color":"gold"},{"text":"inventory_update","color":"yellow"}]
tag @s add hexenwerk.tick.recieved_inv_update_event