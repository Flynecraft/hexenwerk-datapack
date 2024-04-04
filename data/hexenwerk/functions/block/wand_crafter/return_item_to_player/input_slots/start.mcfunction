tag @s add hexenwerk.this

execute as @e[type=item_display,tag=hexenwerk.block.gui,tag=hexenwerk.block.gui.open] at @s if entity @s[tag=hexenwerk.block.wand_crafter.has_wand] run function hexenwerk:block/wand_crafter/return_item_to_player/input_slots/if_wand
execute as @e[type=item_display,tag=hexenwerk.block.gui,tag=hexenwerk.block.gui.open] at @s if entity @s[tag=!hexenwerk.block.wand_crafter.has_wand] run function hexenwerk:block/wand_crafter/return_item_to_player/input_slots/if_no_wand

tag @s remove hexenwerk.this
clear @s barrier[custom_data={hexenwerk:{input_slot:1b, kill_me:1b}}]