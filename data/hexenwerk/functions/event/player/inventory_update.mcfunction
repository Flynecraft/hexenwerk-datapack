execute unless entity @s[tag=hexenwerk.tick.recieved_inv_update_event] run function hexenwerk:mechanic/mana/modifiers/mana_max/check
execute unless entity @s[tag=hexenwerk.tick.recieved_inv_update_event] run function hexenwerk:mechanic/mana/modifiers/mana_regen/check

execute unless entity @s[tag=hexenwerk.tick.recieved_inv_update_event] run tellraw @a[tag=hexenwerk.debug] ["",{"text":"[","color":"light_purple"},{"text":"DEBUG","color":"red"},{"text":"] ","color":"light_purple"},{"selector":"@s","color":"yellow"}," triggered ",{"text":"player","color":"yellow"},{"text":"/","color":"gold"},{"text":"inventory_update","color":"yellow"}]
tag @s add hexenwerk.tick.recieved_inv_update_event

advancement revoke @s only hexenwerk:events/update_inventory