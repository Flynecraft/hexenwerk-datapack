data remove storage hexenwerk:temp item
data modify storage hexenwerk:temp item set from block ~ ~ ~ Items[{Slot:14b}]
function hexenwerk:block/wand_crafter/return_item_to_player/spawn_item with storage hexenwerk:temp
item replace block ~ ~ ~ container.14 with minecraft:air

tag @s add hexenwerk.block.wand_crafter.plz_fill_gui