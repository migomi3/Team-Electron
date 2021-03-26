/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 35812ED8
/// @DnDArgument : "code" "if (spawn_enemy == true){$(13_10)	//randomize to make every game different$(13_10)	randomize()$(13_10)	enemy_spawn_type = irandom(1) + 1$(13_10)	$(13_10)	switch(enemy_spawn_type)$(13_10)	{$(13_10)		case 1:	if(count_enemy1 > 0){$(13_10)					alarm_set(0, enemy1_spawn_interval)$(13_10)					spawn_enemy = false$(13_10)					break$(13_10)		}$(13_10)		case 2:	if(count_enemy2 > 0){$(13_10)					alarm_set(1, enemy2_spawn_interval)$(13_10)					spawn_enemy = false$(13_10)					break$(13_10)		}$(13_10)	}$(13_10)}$(13_10)"
if (spawn_enemy == true){
	//randomize to make every game different
	randomize()
	enemy_spawn_type = irandom(1) + 1
	
	switch(enemy_spawn_type)
	{
		case 1:	if(count_enemy1 > 0){
					alarm_set(0, enemy1_spawn_interval)
					spawn_enemy = false
					break
		}
		case 2:	if(count_enemy2 > 0){
					alarm_set(1, enemy2_spawn_interval)
					spawn_enemy = false
					break
		}
	}
}