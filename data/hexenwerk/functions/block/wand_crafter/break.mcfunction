execute as @a[tag=hexenwerk.this] if entity @s[gamemode=survival] run loot spawn ~ ~ ~ loot hexenwerk:block/wand_crafter
kill @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..1,sort=nearest,limit=1]
kill @s