scoreboard players set testilein tpcooldown 1
execute if block ~ ~-0.1 ~ minecraft:respawn_anchor if block ~-1 ~-0.1 ~ minecraft:deepslate_tile_stairs if block ~1 ~-0.1 ~ minecraft:deepslate_tile_stairs if block ~ ~-0.1 ~-1 minecraft:deepslate_tile_stairs if block ~ ~-0.1 ~1 minecraft:deepslate_tile_stairs if block ~-1 ~-0.1 ~-1 minecraft:polished_deepslate_wall if block ~1 ~-0.1 ~-1 minecraft:polished_deepslate_wall if block ~-1 ~-0.1 ~1 minecraft:polished_deepslate_wall if block ~1 ~-0.1 ~1 minecraft:polished_deepslate_wall run scoreboard players set testilein tpcooldown 0
execute if score testilein tpcooldown matches 1 run playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 0.5 1
execute if score testilein tpcooldown matches 1 run kill @e[tag=it_name,limit=1,sort=nearest,distance=..3]
execute if score testilein tpcooldown matches 1 run summon item ~ ~ ~ {NoGravity:1b,Silent:1b,Item:{id:"minecraft:netherite_ingot",Count:1b}}
execute if score testilein tpcooldown matches 1 run summon item ~ ~ ~ {NoGravity:1b,Silent:1b,Item:{id:"minecraft:amethyst_cluster",Count:3b}}
execute if score testilein tpcooldown matches 1 run summon item ~ ~ ~ {NoGravity:1b,Silent:1b,Item:{id:"minecraft:diamond",Count:2b}}
execute if score testilein tpcooldown matches 1 run forceload remove ~ ~ ~ ~
execute if score testilein tpcooldown matches 1 run kill @s
