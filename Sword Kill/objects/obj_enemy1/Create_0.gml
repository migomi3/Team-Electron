/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 77BB198C
/// @DnDArgument : "code" "enemy_facing = 1$(13_10)check_direction = true$(13_10)gravity = 0.4$(13_10)jumping = false$(13_10)player_different_level = false$(13_10)player_collided = false$(13_10)enemy_hit = false$(13_10)$(13_10)//Set initial direction for enemy toward player$(13_10)if(instance_exists(obj_player)){$(13_10)	if((obj_player.x - x) > 0){$(13_10)		enemy_facing = 1$(13_10)	} else {$(13_10)		enemy_facing = -1	$(13_10)	}$(13_10)}"
enemy_facing = 1
check_direction = true
gravity = 0.4
jumping = false
player_different_level = false
player_collided = false
enemy_hit = false

//Set initial direction for enemy toward player
if(instance_exists(obj_player)){
	if((obj_player.x - x) > 0){
		enemy_facing = 1
	} else {
		enemy_facing = -1	
	}
}