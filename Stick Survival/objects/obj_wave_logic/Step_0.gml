/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 35812ED8
/// @DnDArgument : "code" "if(instance_exists(obj_player) == true){$(13_10)	if(wave_started){$(13_10)		if (spawn_enemy == true){$(13_10)		//randomize to make every game different$(13_10)		randomize()$(13_10)		enemy_spawn_type = irandom(1) + 1$(13_10)		$(13_10)		switch(enemy_spawn_type)$(13_10)		{$(13_10)			case 1:	if(spawn_left_enemy1 > 0){$(13_10)						alarm_set(0, enemy1_spawn_interval)$(13_10)						spawn_enemy = false$(13_10)						spawn_left_enemy1 -= 1$(13_10)						break$(13_10)			}$(13_10)			case 2:	if(spawn_left_enemy2 > 0){$(13_10)						alarm_set(1, enemy2_spawn_interval)$(13_10)						spawn_enemy = false$(13_10)						spawn_left_enemy2 -= 1$(13_10)						break$(13_10)			}$(13_10)		}$(13_10)		}$(13_10)		//Keep track of how many enemies remain$(13_10)		if(wave_started){$(13_10)			enemies_left = spawn_enemy1 + spawn_enemy2 - killed_enemy1 - killed_enemy2$(13_10)		}$(13_10)		//If no enemies are left, wave is cleared!$(13_10)		if(enemies_left == 0 and wave_started == true){$(13_10)			wave_started = false$(13_10)			alarm[2] = wave_delay		$(13_10)		}$(13_10)	}$(13_10)}"
if(instance_exists(obj_player) == true){
	if(wave_started){
		if (spawn_enemy == true){
		//randomize to make every game different
		randomize()
		enemy_spawn_type = irandom(1) + 1
		
		switch(enemy_spawn_type)
		{
			case 1:	if(spawn_left_enemy1 > 0){
						alarm_set(0, enemy1_spawn_interval)
						spawn_enemy = false
						spawn_left_enemy1 -= 1
						break
			}
			case 2:	if(spawn_left_enemy2 > 0){
						alarm_set(1, enemy2_spawn_interval)
						spawn_enemy = false
						spawn_left_enemy2 -= 1
						break
			}
		}
		}
		//Keep track of how many enemies remain
		if(wave_started){
			enemies_left = spawn_enemy1 + spawn_enemy2 - killed_enemy1 - killed_enemy2
		}
		//If no enemies are left, wave is cleared!
		if(enemies_left == 0 and wave_started == true){
			wave_started = false
			alarm[2] = wave_delay		
		}
	}
}