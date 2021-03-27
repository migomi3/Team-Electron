/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 51FA767D
/// @DnDArgument : "code" "//Wave Cleared! Update variables$(13_10)wave_started = true$(13_10)$(13_10)spawn_enemy1 = 5 + (wave_number * 2)$(13_10)spawn_left_enemy1 = spawn_enemy1$(13_10)killed_enemy1 = 0$(13_10)$(13_10)if(wave_number > 3){$(13_10)	spawn_enemy2 = 5 + (wave_number * 1)	$(13_10)	spawn_left_enemy2 = spawn_enemy2$(13_10)	killed_enemy2 = 0$(13_10)}$(13_10)wave_number += 1$(13_10)"
//Wave Cleared! Update variables
wave_started = true

spawn_enemy1 = 5 + (wave_number * 2)
spawn_left_enemy1 = spawn_enemy1
killed_enemy1 = 0

if(wave_number > 3){
	spawn_enemy2 = 5 + (wave_number * 1)	
	spawn_left_enemy2 = spawn_enemy2
	killed_enemy2 = 0
}
wave_number += 1