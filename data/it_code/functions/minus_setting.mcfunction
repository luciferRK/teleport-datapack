scoreboard players remove setting tpcooldown 20
execute if score setting tpcooldown matches 0 run scoreboard players set setting tpcooldown 20
scoreboard players operation rechner2 tpcooldown = setting tpcooldown
scoreboard players operation rechner2 tpcooldown /= rechner tpcooldown
tellraw @p ["","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n","\n"]
tellraw @p ["",{"text":"The current cooldown is : ","italic":true,"color":"dark_purple"},{"score":{"name":"setting","objective":"tpcooldown"},"bold":true,"italic":true,"color":"light_purple"},{"text":" Ticks or ","italic":true,"color":"dark_purple"},{"score":{"name":"rechner2","objective":"tpcooldown"},"bold":true,"italic":true,"color":"light_purple"},{"text":" Seconds. ","italic":true,"color":"dark_purple"}]
tellraw @p ["",{"text":"[ ","bold":true,"color":"dark_blue"},{"text":"-1 Second","italic":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function it_code:minus_setting"}},{"text":" ]","bold":true,"color":"dark_blue"},{"text":" --- ","bold":true,"italic":true,"color":"dark_gray"},{"text":"[ ","bold":true,"color":"dark_blue"},{"text":"+1 Second","italic":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function it_code:plus_setting"}},{"text":" ]","bold":true,"color":"dark_blue"}]
tellraw @p ["","\n","\n","\n"]
