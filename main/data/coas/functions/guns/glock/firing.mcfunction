summon armor_stand ~ ~1.8 ~ {Small:1,Invisible:1,Marker:1,ArmorItems:[{},{},{},{id:lantern,Count:1,tag:{CustomModelData:1}}],Tags:["muzzle_flash"]}

summon area_effect_cloud ^ ^ ^30 {Tags:["bullet.marker"],Radius:0}
summon arrow ~ ~1.8 ~ {Tags:["bullet","glock.bullet"],damage:5,Color:-1}
data modify entity @e[type=arrow,tag=bullet,sort=nearest,limit=1,tag=!marked] Owner set from entity @s UUID
function coas:core/set_motion


playsound entity.firework_rocket.blast master @a[distance=0..] ~ ~ ~ 4 .5



function coas:core/get_data/mainhand

execute in overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.ammo int 1 run scoreboard players remove @s ammo.mainhand 1
execute in overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.durability int 1 run scoreboard players add @s durability.mh 1
execute in overworld run execute store result block 0 0 1 Items[{Slot:0b}].tag.Damage int 0.049 run scoreboard players remove @s durability.mh 510
execute store result score @s durability.mh run data get storage inventory SelectedItem.tag.durability 1

execute in overworld run loot replace entity @s weapon.mainhand 1 mine 0 0 1 air{drop_contents:true}



tp @s[scores={sneak=0},tag=!proning] ~ ~ ~ ~ ~-5
tp @s[scores={sneak=1},tag=!proning] ~ ~ ~ ~ ~-2.5
