tag @s add nowb
scoreboard players set testilein tpcooldown 1
execute as @e[tag=punkt_a] at @s if score @s teleporter_id = @e[tag=nowb,limit=1] teleporter_id run tag @s add nowb_m
execute as @e[tag=nowb_m,limit=1] at @s if block ~ ~-0.1 ~ minecraft:chiseled_stone_bricks if block ~-1 ~-0.1 ~ minecraft:stone_brick_stairs if block ~1 ~-0.1 ~ minecraft:stone_brick_stairs if block ~ ~-0.1 ~-1 minecraft:stone_brick_stairs if block ~ ~-0.1 ~1 minecraft:stone_brick_stairs if block ~-1 ~-0.1 ~-1 minecraft:andesite_wall if block ~1 ~-0.1 ~-1 minecraft:andesite_wall if block ~-1 ~-0.1 ~1 minecraft:andesite_wall if block ~1 ~-0.1 ~1 minecraft:andesite_wall run scoreboard players set testilein tpcooldown 0
execute unless entity @e[tag=nowb_m] run scoreboard players set testilein tpcooldown 0
execute if score testilein tpcooldown matches 1 run execute as @e[tag=nowb_m,limit=1] at @s run kill @e[tag=it_name,limit=1,sort=nearest,distance=..3]
execute if score testilein tpcooldown matches 1 run execute as @e[tag=nowb_m,limit=1] at @s run summon item ~ ~ ~ {NoGravity:1b,Silent:1b,Item:{id:"minecraft:ender_pearl",Count:1b}}
execute if score testilein tpcooldown matches 1 run execute as @e[tag=nowb_m,limit=1] at @s run summon item ~ ~ ~ {NoGravity:1b,Silent:1b,Item:{id:"minecraft:amethyst_shard",Count:2b}}
execute if score testilein tpcooldown matches 1 run execute as @e[tag=nowb_m,limit=1] at @s run summon item ~ ~ ~ {NoGravity:1b,Silent:1b,Item:{id:"minecraft:gold_ingot",Count:2b}}
execute if score testilein tpcooldown matches 1 run execute as @e[tag=nowb_m,limit=1] at @s run forceload remove ~ ~ ~ ~
execute if score testilein tpcooldown matches 1 run execute as @e[tag=nowb_m,limit=1] at @s run kill @s
execute as @e[tag=nowb_m,limit=1] at @s if score testilein tpcooldown matches 1 run playsound minecraft:block.beacon.deactivate block @a ~ ~ ~
execute if score testilein tpcooldown matches 1 run kill @e[tag=it_name,limit=1,sort=nearest,distance=..3]
execute if score testilein tpcooldown matches 1 run summon item ~ ~ ~ {NoGravity:1b,Silent:1b,Item:{id:"minecraft:ender_pearl",Count:1b}}
execute if score testilein tpcooldown matches 1 run summon item ~ ~ ~ {NoGravity:1b,Silent:1b,Item:{id:"minecraft:amethyst_shard",Count:2b}}
execute if score testilein tpcooldown matches 1 run summon item ~ ~ ~ {NoGravity:1b,Silent:1b,Item:{id:"minecraft:gold_ingot",Count:2b}}
execute if score testilein tpcooldown matches 1 run forceload remove ~ ~ ~ ~
execute if score testilein tpcooldown matches 1 run kill @s
execute as @e[tag=nowb_m,limit=1] at @s align xz positioned ~.5 ~ ~.5 if entity @a[distance=3.5..4.5] run title @a[distance=3.5..4.5] actionbar ""
execute as @e[tag=nowb_m,limit=1] at @s align xz positioned ~.5 ~ ~.5 if entity @a[distance=..3.5] if entity @s[scores={tpcooldown=1..}] run scoreboard players operation rechner2 tpcooldown = @s tpcooldown
execute as @e[tag=nowb_m,limit=1] at @s align xz positioned ~.5 ~ ~.5 if entity @a[distance=..3.5] if entity @s[scores={tpcooldown=1..}] run scoreboard players operation rechner2 tpcooldown /= rechner tpcooldown
execute as @e[tag=nowb_m,limit=1] at @s align xz positioned ~.5 ~ ~.5 if entity @a[distance=..3.5] if entity @s[scores={tpcooldown=1..}] run scoreboard players add rechner2 tpcooldown 1
execute as @e[tag=nowb_m,limit=1] at @s align xz positioned ~.5 ~ ~.5 if entity @a[distance=..3.5] if entity @s[scores={tpcooldown=1..}] run title @a[distance=..3.5] actionbar ["",{"text":"Cooldown : ","bold":true,"italic":true,"color":"gray"},{"score":{"name":"rechner2","objective":"tpcooldown"},"italic":true,"color":"dark_aqua"}]
execute as @e[tag=nowb_m,limit=1] at @s align xz positioned ~.5 ~ ~.5 if entity @a[distance=..3.5] if entity @s[scores={tpcooldown=0}] run title @a[distance=..3.5] actionbar ["",{"text":"Teleporter is ready","bold":true,"italic":true,"color":"gray"}]
execute as @e[tag=nowb_m,limit=1] at @s align xz positioned ~.5 ~ ~.5 if entity @s[scores={tpcooldown=0}] run tag @e[distance=..0.5,tag=!punkt_a,tag=!it_name] add tobileinb
execute as @e[tag=nowb_m,limit=1] at @s align xz positioned ~.5 ~ ~.5 if entity @s[scores={tpcooldown=0}] if entity @e[tag=!punkt_a,distance=..0.5,tag=!it_name] run scoreboard players operation @e[tag=nowb] tpcooldown = setting tpcooldown
execute as @e[tag=nowb_m,limit=1] at @s align xz positioned ~.5 ~ ~.5 at @e[tag=nowb,limit=1] align xz positioned ~.5 ~ ~.5 run tp @e[tag=tobileinb] ~ ~ ~
execute if entity @e[tag=tobileinb] at @s align xz positioned ~0.5 ~ ~0.5 run particle minecraft:reverse_portal ~ ~1 ~ 0.01 0.5 0.01 0.1 100 normal
execute if entity @e[tag=tobileinb] run playsound minecraft:entity.enderman.teleport block @a ~ ~ ~ 0.5 1.4
tag @e[tag=tobileinb] remove tobileinb
tag @s remove nowb
tag @e remove nowb_m
