advancement revoke @s only hexenwerk:events/consume_mulberry_wine
tellraw @a[tag=hexenwerk.debug] ["",{"text":"[","color":"light_purple"},{"text":"DEBUG","color":"red"},{"text":"] ","color":"light_purple"},{"selector":"@s","color":"yellow"}," triggered ",{"text":"item","color":"yellow"},{"text":"/","color":"gold"},{"text":"mulberry_wine","color":"yellow"},{"text":"/","color":"gold"},{"text":"consume","color":"yellow"}]
particle minecraft:entity_effect 124 171 42 100 ~ ~0.2 ~ 0.2 0.2 0.2 2 50
playsound block.small_amethyst_bud.break master @a ~ ~ ~ 10 1
scoreboard players set @s hexenwerk.play_amethyst_sounds 5
effect give @s minecraft:saturation 1 5 true
function hexenwerk:tools/calculate_mana_max
execute unless score @s hexenwerk.mana = @s hexenwerk.mana.max run scoreboard players operation @s hexenwerk.mana += 20 hexenwerk.const