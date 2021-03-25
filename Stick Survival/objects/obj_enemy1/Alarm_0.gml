/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6931B4E0
/// @DnDArgument : "code" "//Alarm 0 checks if the player is on a different level. $(13_10)//If the player is on a different level, dont change directions until$(13_10)//the enemy hits a jumping location. Then they will check$(13_10)if(instance_exists(obj_player)){$(13_10)	if(((obj_player.y - y) > 50) ||$(13_10)		((obj_player.y - y) < -50)){$(13_10)		player_different_level = true	$(13_10)	} else{$(13_10)		player_different_level = false	$(13_10)	}$(13_10)	$(13_10)	if(!player_different_level){$(13_10)		if((obj_player.x - x) > 0){$(13_10)			enemy_facing = 1$(13_10)		} else {$(13_10)			enemy_facing = -1	$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)check_direction = true"
//Alarm 0 checks if the player is on a different level. 
//If the player is on a different level, dont change directions until
//the enemy hits a jumping location. Then they will check
if(instance_exists(obj_player)){
	if(((obj_player.y - y) > 50) ||
		((obj_player.y - y) < -50)){
		player_different_level = true	
	} else{
		player_different_level = false	
	}
	
	if(!player_different_level){
		if((obj_player.x - x) > 0){
			enemy_facing = 1
		} else {
			enemy_facing = -1	
		}
	}
}

check_direction = true