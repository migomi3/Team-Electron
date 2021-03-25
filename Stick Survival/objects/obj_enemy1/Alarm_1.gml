/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B3AD27F
/// @DnDArgument : "code" "if(((obj_player.x - x) > 0) and (enemy_facing == -1) ||$(13_10)	((obj_player.x - x) < 0) and (enemy_facing == 1)){$(13_10)	enemy_facing *= -1$(13_10)}"
if(((obj_player.x - x) > 0) and (enemy_facing == -1) ||
	((obj_player.x - x) < 0) and (enemy_facing == 1)){
	enemy_facing *= -1
}