kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data": {hexenwerk: {kill_me: 1b}}}}}]

execute as @a[tag=hexenwerk.watch.scroll_hotbar] store result score @s hexenwerk.hotbar.selected_slot run data get entity @s SelectedItemSlot

execute as @a if predicate hexenwerk:has_item/gui_element run function hexenwerk:block/wand_crafter/return_item_to_player/start
execute as @a if predicate hexenwerk:has_item/gui_element_input_slot at @e[type=item_display,tag=hexenwerk.block.gui.open,tag=hexenwerk.block.type.wand_crafter,sort=nearest,limit=1] run function hexenwerk:block/wand_crafter/return_item_to_player/input_slots/start
execute as @a if predicate hexenwerk:has_item/wand_crafter_input at @e[type=item_display,tag=hexenwerk.block.gui.open,tag=hexenwerk.block.type.wand_crafter,sort=nearest,limit=1] run function hexenwerk:block/wand_crafter/return_item_to_player/input_slots/start

# VVV WHILE X VVV
execute as @e[type=item_display,tag=hexenwerk.block.gui,tag=hexenwerk.block.gui.open] at @s run function hexenwerk:event/block/while/open
# ΛΛΛ WHILE X ΛΛΛ

# VVV EVENTS VVV
execute as @a[tag=hexenwerk.watch.scroll_hotbar] unless score @s hexenwerk.hotbar.selected_slot = @s hexenwerk.hotbar.selected_slot_old run function hexenwerk:event/player/scroll_hotbar
execute as @e[type=item_display,tag=hexenwerk.block] at @s if block ~ ~ ~ #taglib:air run function hexenwerk:event/block/break
execute as @e[type=item_display,tag=hexenwerk.block.gui,tag=!hexenwerk.block.gui.open] at @s if block ~ ~ ~ barrel[open=true] run function hexenwerk:event/block/open
execute as @e[type=item_display,tag=hexenwerk.block.gui,tag=hexenwerk.block.gui.open] at @s if block ~ ~ ~ barrel[open=false] run function hexenwerk:event/block/close
execute as @a[scores={hexenwerk.used.wfoas=1..}] run function hexenwerk:event/item/right_click
# ΛΛΛ EVENTS ΛΛΛ

execute as @a run title @s actionbar [{"score":{"name":"@s","objective":"hexenwerk.mana"},"color":"dark_aqua"},{"text": " (","color": "white"},{"score":{"name":"@s","objective":"hexenwerk.mana.max_modifier"},"color":"aqua"},{"text": "/","color": "white"},{"score":{"name":"@s","objective":"hexenwerk.mana.regen_modifier"},"color":"aqua"},{"text": ")","color": "white"}]

execute as @a[tag=hexenwerk.watch.scroll_hotbar] store result score @s hexenwerk.hotbar.selected_slot_old run data get entity @s SelectedItemSlot

# VVV REMOVE TAGS
tag @a remove hexenwerk.tick.recieved_inv_update_event
