scoreboard players set #bb.vm.mining_state bb.success 0
execute as @e[type=item, nbt={Age: 0s}, tag=!boomber.veinminer.ignore, distance=..1] run function boomber:veinminer/ore/ore_table
execute if score #bb.vm.mining_state bb.success matches 1.. run function boomber:veinminer/player/found
execute if score #bb.vm.mining_state bb.success matches 0 run tag @e[type=item, nbt={Age: 0s}, tag=!boomber.veinminer.ignore, distance=..1] add boomber.veinminer.ignore