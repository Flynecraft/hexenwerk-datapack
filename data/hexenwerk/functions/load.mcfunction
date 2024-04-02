say reloaded :)

scoreboard objectives add hexenwerk.used.wfoas minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard objectives add hexenwerk.hotbar.selected_slot dummy
scoreboard objectives add hexenwerk.hotbar.selected_slot_old dummy

scoreboard objectives add hexenwerk.mana dummy
scoreboard objectives add hexenwerk.mana.max dummy
scoreboard objectives add hexenwerk.mana.max_modifier dummy
scoreboard objectives add hexenwerk.mana.regen_modifier dummy
scoreboard objectives add hexenwerk.mana.max dummy

scoreboard objectives add hexenwerk.const dummy
scoreboard objectives add hexenwerk.temp dummy
scoreboard objectives add hexenwerk.default dummy

scoreboard objectives add hexenwerk.block.wand_crafter.wand_uuid dummy
scoreboard objectives add hexenwerk.block.wand_crafter.wand_uuid.old dummy

scoreboard objectives add hexenwerk.play_amethyst_sounds dummy

scoreboard objectives add hexenwerk.PUBLIC.mana.max_modifier dummy
scoreboard objectives add hexenwerk.PUBLIC.mana.regen_modifier dummy

scoreboard players set %mana_max hexenwerk.default 100
scoreboard players set %mana_regen hexenwerk.default 1

scoreboard players set 100 hexenwerk.const 100
scoreboard players set 20 hexenwerk.const 20

function hexenwerk:event/time/second
function hexenwerk:event/time/2t