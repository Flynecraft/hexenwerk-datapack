tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> sucessfully swapped wand slot to ","color":"red"},{"text":"2","color":"gold"}]

tellraw @s {"translate":"text.hexenwerk.swapslot_2"}
item modify entity @s weapon.mainhand hexenwerk:swap_wand_slot/second
execute if predicate hexenwerk:is_holding_wand_offhand run item modify entity @s weapon.offhand hexenwerk:swap_wand_slot/second