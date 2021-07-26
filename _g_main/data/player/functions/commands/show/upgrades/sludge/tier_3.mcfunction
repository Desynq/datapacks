tellraw @s {"color":"yellow","text":"----------------"}
tellraw @s {"color":"gold","text":"Tier 3 Upgrades require Myst Stage 3 Completion!"}
tellraw @s {"color":"yellow","text":"----------------"}



data modify storage local:upgrades upgrade set from storage local:upgrades race.321
execute if entity @s[advancements={minecraft:races/sludge/3/2/1=false}] run tellraw @s {"bold":true,"color":"white","storage":"local:upgrades","nbt":"upgrade[0]","interpret":true,"clickEvent":{"action":"suggest_command","value":"/upgrade buy 321"},"hoverEvent":{"action":"show_text","contents":[{"storage":"local:upgrades","nbt":"upgrade[2]","interpret":true},"\n\n",{"color":"gold","text":"Requires: "},{"color":"dark_aqua","storage":"local:upgrades","nbt":"upgrade[3]","interpret":true},"\n",{"color":"gray","text":"Cost: "},{"color":"dark_green","storage":"local:upgrades","nbt":"upgrade[1]","interpret":true}]}} 
execute if entity @s[advancements={minecraft:races/sludge/3/2/1=true}] run tellraw @s {"strikethrough":true,"bold":true,"color":"white","storage":"local:upgrades","nbt":"upgrade[0]","interpret":true,"clickEvent":{"action":"suggest_command","value":"/upgrade buy 321"},"hoverEvent":{"action":"show_text","contents":[{"storage":"local:upgrades","nbt":"upgrade[2]","interpret":true},"\n\n",{"color":"gold","text":"Requires: "},{"color":"dark_aqua","storage":"local:upgrades","nbt":"upgrade[3]","interpret":true},"\n\n",{"color":"gray","text":"Cost: "},{"color":"dark_green","storage":"local:upgrades","nbt":"upgrade[1]","interpret":true}]}} 



tellraw @s {"color":"yellow","text":"----------------"}
