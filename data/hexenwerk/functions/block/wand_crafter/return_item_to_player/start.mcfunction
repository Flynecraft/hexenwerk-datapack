tag @s add hexenwerk.this
execute as @e[type=item_display,tag=hexenwerk.block.gui.open,tag=hexenwerk.block.type.wand_crafter,sort=nearest,limit=1] at @s run function hexenwerk:block/wand_crafter/return_item_to_player/main
tag @s remove hexenwerk.this
clear @s barrier{hexenwerk:{gui_element:1b}}