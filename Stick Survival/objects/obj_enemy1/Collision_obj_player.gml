/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 570ED05F
/// @DnDArgument : "code" "if(!player_collided and (obj_player.blocking == true)){$(13_10)	hspeed = 2 * sign(x-other.x)$(13_10)	alarm[3] = 20$(13_10)	player_collided = true$(13_10)}"
if(!player_collided and (obj_player.blocking == true)){
	hspeed = 2 * sign(x-other.x)
	alarm[3] = 20
	player_collided = true
}