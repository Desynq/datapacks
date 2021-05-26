tag @s add unloading



function coas:core/get_data/mainhand

execute in overworld store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players get @s mag.ammo

scoreboard players operation @s mag = @s mag.ammo

execute if entity @s[nbt={SelectedItem:{tag:{Tags:["50rnd_mag"]}}}] run function coas:core/unloading/50
execute if entity @s[nbt={SelectedItem:{tag:{Tags:["30rnd_mag"]}}}] run function coas:core/unloading/30
execute if entity @s[nbt={SelectedItem:{tag:{Tags:["20rnd_mag"]}}}] run function coas:core/unloading/20
execute if entity @s[nbt={SelectedItem:{tag:{Tags:["10rnd_mag"]}}}] run function coas:core/unloading/10

execute in overworld run loot replace entity @s weapon.mainhand 1 mine 0 0 1 air{drop_contents:true}



playsound item.armor.equip_iron master @a
