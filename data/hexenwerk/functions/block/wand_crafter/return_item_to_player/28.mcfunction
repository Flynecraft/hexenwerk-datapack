data remove storage hexenwerk:temp item
data modify storage hexenwerk:temp item set from block ~ ~ ~ Items[{Slot:28b}]
function hexenwerk:block/wand_crafter/return_item_to_player/spawn_item with storage hexenwerk:temp
item replace block ~ ~ ~ container.28 with minecraft:air