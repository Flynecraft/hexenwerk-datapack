#schedule stuff
execute as @a[scores={hexenwerk.join=1..}] run function hexenwerk:mana/run_regen

#run functions
execute as @a[predicate=hexenwerk:is_holding_wand] at @s run function hexenwerk:wand/main
execute as @a[predicate=hexenwerk:is_holding_wand_offhand] at @s run function hexenwerk:wand/main
execute as @e[type=glow_item_frame,tag=hexenwerk.block] at @s run function hexenwerk:blocks/main
execute as @e[type=glow_item_frame,nbt={Item: {id: "minecraft:glow_item_frame", Count: 1b, tag: {hexenwerk.place_block: 1b}}}] at @s run function hexenwerk:blocks/main_place
execute as @a[gamemode=survival,tag=!hexenwerk.debug,predicate=hexenwerk:not_drowning] run function hexenwerk:mana/display
execute as @a[gamemode=adventure,tag=!hexenwerk.debug,predicate=hexenwerk:not_drowning] run function hexenwerk:mana/display
execute as @a[gamemode=survival,tag=!hexenwerk.debug,predicate=!hexenwerk:not_drowning] run function hexenwerk:mana/display_water
execute as @a[gamemode=adventure,tag=!hexenwerk.debug,predicate=!hexenwerk:not_drowning] run function hexenwerk:mana/display_water
execute as @a[scores={hexenwerk.broken_svs=1..}] run function hexenwerk:mana/regen_of_flower
execute as @e[scores={hexenwerk.deaths=1..}] run function hexenwerk:mana/on_death

#clear stuff
execute as @a store result score @s hexenwerk.took_gui run clear @a barrier{hexenwerk.gui: 1b} 0
execute as @a[scores={hexenwerk.took_gui=1..}] at @s run function hexenwerk:blocks/magical_crafting_table/gui/fix_items
kill @e[type=minecraft:item,nbt={Item: {tag: {hexenwerk.gui: 1b}}}]
kill @e[type=minecraft:item,nbt={Item: {tag: {hexenwerk.gui_but_not_actually: 1b}}}]
clear @a barrier{hexenwerk.gui_but_not_actually: 1b} 1
clear @a barrier{hexenwerk.clear: 1b} 1

#debug display
execute as @a[tag=hexenwerk.debug] run title @s actionbar ["",{"text":"Mana: ","color":"aqua"},{"score":{"name":"@s","objective":"hexenwerk.mana_current"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"hexenwerk.mana_max"},"color":"aqua"},{"text":" Spell Slot: ","color":"aqua"},{"score":{"name":"@s","objective":"hexenwerk.spell_slot"},"color":"aqua"}]

#comment/remove in release
execute as @a[predicate=hexenwerk:is_holding_dev_stone,scores={hexenwerk.used_wfoas=1..}] at @s run function hexenwerk:dev/dev_stone/toggle

#set scoreboards
scoreboard players set @a[scores={hexenwerk.used_wfoas=1..}] hexenwerk.used_wfoas 0
scoreboard players operation @a[tag=!hexenwerk.ignore_default_mana_max] hexenwerk.mana_max = #default hexenwerk.mana_max