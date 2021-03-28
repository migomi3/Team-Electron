/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B3AD27F
/// @DnDArgument : "code" "if (instance_exists(obj_player)){$(13_10)	if(((obj_player.x - x) > 0) and (enemy_facing == -1) ||$(13_10)			((obj_player.x - x) < 0) and (enemy_facing == 1)){$(13_10)		enemy_facing *= -1$(13_10)	}$(13_10)}"
if (instance_exists(obj_player)){
	if(((obj_player.x - x) > 0) and (enemy_facing == -1) ||
			((obj_player.x - x) < 0) and (enemy_facing == 1)){
		enemy_facing *= -1
	}
}