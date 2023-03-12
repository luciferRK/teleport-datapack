scoreboard players set testilein tpcooldown 1
execute if block ~ ~-0.1 ~ minecraft:chiseled_stone_bricks if block ~-1 ~-0.1 ~ minecraft:stone_brick_stairs if block ~1 ~-0.1 ~ minecraft:stone_brick_stairs if block ~ ~-0.1 ~-1 minecraft:stone_brick_stairs if block ~ ~-0.1 ~1 minecraft:stone_brick_stairs if block ~-1 ~-0.1 ~-1 minecraft:andesite_wall if block ~1 ~-0.1 ~-1 minecraft:andesite_wall if block ~-1 ~-0.1 ~1 minecraft:andesite_wall if block ~1 ~-0.1 ~1 minecraft:andesite_wall run scoreboard players set testilein tpcooldown 0
execute if score testilein tpcooldown matches 1 run playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 0.5 1
execute if score testilein tpcooldown matches 1 run kill @e[tag=it_name,limit=1,sort=nearest,distance=..3]
execute if score testilein tpcooldown matches 1 run summon item ~ ~ ~ {NoGravity:1b,Silent:1b,Item:{id:"minecraft:ender_pearl",Count:1b}}
execute if score testilein tpcooldown matches 1 run summon item ~ ~ ~ {NoGravity:1b,Silent:1b,Item:{id:"minecraft:amethyst_shard",Count:2b}}
execute if score testilein tpcooldown matches 1 run summon item ~ ~ ~ {NoGravity:1b,Silent:1b,Item:{id:"minecraft:gold_ingot",Count:2b}}
execute if score testilein tpcooldown matches 1 run forceload remove ~ ~ ~ ~
execute if score testilein tpcooldown matches 1 run kill @s
