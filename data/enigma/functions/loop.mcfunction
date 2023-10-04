execute as @e[tag=Enigma_Kill] at @s run summon minecraft:potion ~ ~ ~ {Motion:[0.0,-5.0,0.0],Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionEffects:[{Id:7b,Amplifier:2b,Duration:1}]}}}
execute as @e[tag=Enigma_Kill] at @s run kill @s

execute as @e[tag=Enigma_Clone,nbt=!{HurtTime:0s}] at @s run power grant @s enigma:illusory_doppelganger_clone
execute as @e[tag=Enigma_Clone,nbt=!{HurtTime:0s}] at @s run effect clear @a minecraft:invisibility
execute as @e[tag=Enigma_Clone,nbt=!{HurtTime:0s}] at @s run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.05 100
execute as @e[tag=Enigma_Clone,nbt=!{HurtTime:0s}] at @s run kill @s
execute as @e[tag=Enigma_Clone,nbt=!{HurtTime:0s}] at @s as @a if score @s UUID1 = @e[tag=Enigma_Clone,distance=..0.001,sort=nearest,limit=1] UUID1 if score @s UUID2 = @e[tag=Enigma_Clone,distance=..0.001,sort=nearest,limit=1] UUID2 if score @s UUID3 = @e[tag=Enigma_Clone,distance=..0.001,sort=nearest,limit=1] UUID3 if score @s UUID4 = @e[tag=Enigma_Clone,distance=..0.001,sort=nearest,limit=1] UUID4 run tag @s add Enigma_Damage

execute as @e[tag=Enigma_Clone,tag=!Set_Clone] at @s store result score @s UUID1 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[0]
execute as @e[tag=Enigma_Clone,tag=!Set_Clone] at @s store result score @s UUID2 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[1]
execute as @e[tag=Enigma_Clone,tag=!Set_Clone] at @s store result score @s UUID3 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[2]
execute as @e[tag=Enigma_Clone,tag=!Set_Clone] at @s store result score @s UUID4 run data get entity @a[sort=nearest,limit=1,distance=..1] UUID[3]
tag @e[tag=Enigma_Clone,tag=!Set_Clone] add Set_Clone