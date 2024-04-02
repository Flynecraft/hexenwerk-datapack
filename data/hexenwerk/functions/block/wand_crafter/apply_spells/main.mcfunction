execute if items block ~ ~ ~ container.6 minecraft:leather_horse_armor[minecraft:custom_data~{hexenwerk:{id:"spell_book"}}] run function hexenwerk:block/wand_crafter/apply_spells/apply/1
execute if items block ~ ~ ~ container.15 minecraft:leather_horse_armor[minecraft:custom_data~{hexenwerk:{id:"spell_book"}}] run function hexenwerk:block/wand_crafter/apply_spells/apply/2
execute if items block ~ ~ ~ container.24 minecraft:leather_horse_armor[minecraft:custom_data~{hexenwerk:{id:"spell_book"}}] run function hexenwerk:block/wand_crafter/apply_spells/apply/3

execute unless items block ~ ~ ~ container.6 minecraft:leather_horse_armor[minecraft:custom_data~{hexenwerk:{id:"spell_book"}}] run function hexenwerk:block/wand_crafter/apply_spells/remove/1
execute unless items block ~ ~ ~ container.15 minecraft:leather_horse_armor[minecraft:custom_data~{hexenwerk:{id:"spell_book"}}] run function hexenwerk:block/wand_crafter/apply_spells/remove/2
execute unless items block ~ ~ ~ container.24 minecraft:leather_horse_armor[minecraft:custom_data~{hexenwerk:{id:"spell_book"}}] run function hexenwerk:block/wand_crafter/apply_spells/remove/3
