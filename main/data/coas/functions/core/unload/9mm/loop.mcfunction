scoreboard players remove @s ammo.offhand 1
give @s white_dye{CustomModelData:4,type:"9mm",display:{Name:'{"italic":"false","text":"9mm"}'}} 1

execute if score @s ammo.offhand matches 1.. run function coas:core/unload/9mm/loop
