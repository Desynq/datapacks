execute in minecraft:overworld run summon marker 0 0 0 {Tags:["player_storage"],data:{DisabledUpgrades:[]}}

execute as @e[type=marker,tag=player_storage,tag=!marked] run function player:init/player_storage/mark
