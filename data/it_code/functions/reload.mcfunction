scoreboard objectives add teleporter_id dummy
scoreboard objectives add tpcooldown dummy
scoreboard players set rechner tpcooldown 20
execute store success score setting teleporter_id run scoreboard players get setting tpcooldown
execute if score setting teleporter_id matches 0 run scoreboard players set setting tpcooldown 350
scoreboard players add id_reminder teleporter_id 1
scoreboard players remove id_reminder teleporter_id 1
scoreboard objectives add it_name_dropped minecraft.dropped:minecraft.name_tag
# tellraw @p ["",{"text":"[","bold":true,"color":"dark_red"},{"text":"Teleporter-Datapack","bold":true,"color":"red"},{"text":"]","bold":true,"color":"dark_red"},{"text":" Ready !   ","bold":true,"italic":true,"color":"gold"},{"text":"---   ","bold":true,"italic":true,"color":"dark_gray"},{"text":"[","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function it_code:show_setting"}},{"text":"Settings","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function it_code:show_setting"}},{"text":"]","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function it_code:show_setting"}}]
tellraw @p ["",{"text":"[","bold":true,"color":"dark_red"},{"text":"Teleporter-Datapack","bold":true,"color":"red"},{"text":"]","bold":true,"color":"dark_red"},{"text":" Ready !   ","bold":true,"italic":true,"color":"gold"}]