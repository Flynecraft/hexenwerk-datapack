tellraw @a[tag=hexenwerk.debug] ["",{"text":"[DEBUG] ","color":"dark_red"},{"text":"-> ","color":"red"},{"text":"executing block impact event for spell ","color":"red"},{"text":"aguamenti ","color":"aqua"},{"text":"(id: ","color":"red"},{"text":"1005","color":"gold"},{"text":")","color":"red"}]
execute unless predicate hexenwerk:is_in_nether run particle splash ~ ~ ~ 0.1 0.1 0.1 0.2 10 normal
particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 2 normal
execute if predicate hexenwerk:is_in_nether run particle minecraft:large_smoke ~ ~ ~ 0.5 0.5 0.5 0 25 normal
execute unless predicate hexenwerk:is_in_nether run setblock ^ ^ ^ water
execute if predicate hexenwerk:is_in_nether run playsound minecraft:block.fire.extinguish block @a ~ ~ ~
execute unless predicate hexenwerk:is_in_nether run playsound minecraft:item.bucket.empty_axolotl voice @a ~ ~ ~

execute as @a[tag=hexenwerk.spell.caster] run tellraw @a[tag=hexenwerk.announce_spell_uses] ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"Aguamenti!","color":"aqua"}]
