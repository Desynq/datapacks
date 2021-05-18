execute unless entity @s[scores={c.vss=0..}] run scoreboard players set @s c.vss 0
execute unless entity @s[scores={z.vss=0..}] run scoreboard players set @s z.vss 0


execute if entity @s[scores={c.vss=1..}] at @s run function coas:guns/vss/cooldown

execute unless entity @s[scores={d.vss=200..}] if entity @s[scores={u.coas=1..,c.vss=0,a.vss=1..,z.vss=5},predicate=equipment/mainhand/coas/vss] at @s run function coas:guns/vss/firing
execute unless entity @s[scores={d.vss=200..}] if entity @s[scores={u.coas=1..,c.vss=0,a.vss=1..,z.vss=..4},predicate=equipment/mainhand/coas/vss] at @s run function coas:guns/vss/noscope


execute if entity @s[scores={u.coas=1..,sneak=1..,m.vss=1..},predicate=equipment/offhand/coas/vss] unless entity @s[predicate=equipment/mainhand/air,predicate=!equipment/mainhand/mag/20rnd_9x39] at @s run function coas:guns/vss/unload

#Zoom

effect clear @s[scores={sneak=0,z.vss=..4},predicate=effects/blindness_4] blindness
execute if entity @s[scores={z.vss=5}] unless entity @s[scores={sneak=1},predicate=equipment/mainhand/coas/vss] run effect give @s blindness 1 0 true
execute if entity @s[predicate=effects/slowness_11] unless entity @s[scores={sneak=1},predicate=equipment/mainhand/coas/vss] run effect clear @s slowness
execute if entity @s[scores={z.vss=1..}] unless entity @s[scores={sneak=1},predicate=equipment/mainhand/coas/vss] run scoreboard players set @s z.vss 0

scoreboard players add @s[scores={sneak=1,z.vss=..4},predicate=equipment/mainhand/coas/vss] z.vss 1

effect give @s[scores={z.vss=1..3}] blindness 2 4 true
effect clear @s[scores={z.vss=4},predicate=effects/blindness_4] blindness
effect give @s[scores={z.vss=4}] blindness 1 3 true
effect give @s[scores={z.vss=1..}] slowness 1 11 true

execute if entity @s[predicate=effects/slowness_3] store result score @s slowdown run data get entity @s ActiveEffects[{Id:2b,Amplifier:3b}].Duration
effect clear @s[scores={slowdown=..15},predicate=effects/slowness_3] slowness
