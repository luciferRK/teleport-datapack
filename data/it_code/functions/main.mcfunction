execute at @a if entity @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"teleport_sacrifice"}'}}}},distance=..7] run function it_code:function
execute at @e[tag=punkt_a] align xyz if entity @a[distance=..10,tag=!punkt_a,tag=!it_name] run particle minecraft:enchant ~0.5 ~2 ~0.5 0.3 0.5 0.3 0.01 2 normal
execute at @e[tag=punkt_b] align xyz if entity @a[distance=..10,tag=!punkt_b,tag=!it_name] run particle minecraft:enchant ~0.5 ~2 ~0.5 0.3 0.5 0.3 0.01 2 normal
execute as @e[tag=punkt_b] at @s if entity @e[distance=..5,tag=!punkt_b,tag=!it_name,tag=!punkt_a] as @e[tag=punkt_a] at @s run function it_code:tpa
execute as @e[tag=punkt_a] at @s if entity @e[distance=..5,tag=!punkt_a,tag=!it_name,tag=!punkt_b] as @e[tag=punkt_b] at @s run function it_code:tpb
execute as @e[tag=punkt_a] at @s if entity @e[distance=..5,tag=!punkt_a,tag=!it_name,] as @e[tag=punkt_a] at @s run function it_code:remove_a
execute as @e[tag=punkt_b] at @s if entity @e[distance=..5,tag=!punkt_b,tag=!it_name,] as @e[tag=punkt_b] at @s run function it_code:remove_b
execute as @e[tag=punkt_a] if score @s teleporter_id = id_reminder teleporter_id run title @a actionbar {"text":"Teleportation link placed. Create a second one to connect both.","italic":true,"color":"dark_green"}
scoreboard players remove @e[scores={tpcooldown=1..}] tpcooldown 1
execute as @a[scores={it_name_dropped=1..}] at @s run function it_code:naming
execute as @a[scores={it_name_dropped=1..}] at @s if entity @e[type=item,distance=..4,nbt={Item:{id:"minecraft:name_tag"},OnGround:1b}] run scoreboard players set @s it_name_dropped 0
