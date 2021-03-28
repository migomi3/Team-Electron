/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 56264B1D
/// @DnDArgument : "code" "if instance_place(x, y+1, obj_fullBlock) {$(13_10)	gravity = 0$(13_10)	}				$(13_10)else if instance_place(x, y+1, obj_halfBlock) {$(13_10)	gravity = 0$(13_10)	}$(13_10)else {$(13_10)	gravity = 0.4$(13_10)	}	$(13_10)$(13_10)if(instance_place(x - 1, y, obj_halfBlock)){$(13_10)	x = x + 1$(13_10)}$(13_10)if(instance_place(x + 1, y, obj_halfBlock)){$(13_10)	x = x - 1 $(13_10)}$(13_10)$(13_10)if (hp <= 0) {$(13_10)	instance_destroy()$(13_10)}$(13_10)$(13_10)image_xscale = enemy_facing$(13_10)$(13_10)$(13_10)if(!player_collided and !enemy_hit){$(13_10)if instance_exists(obj_player){$(13_10)    if (distance_to_object(obj_player) <= range$(13_10)        and (abs(y-obj_player.y) <= obj_player.sprite_height/2)) {$(13_10)            hspeed = 0$(13_10)    } else {$(13_10)		if (enemy_facing == 1){$(13_10)			hspeed = enemy_facing	$(13_10)		} else if(enemy_facing == -1){$(13_10)			hspeed = enemy_facing$(13_10)		}$(13_10)	}$(13_10)	if (distance_to_object(obj_player) <= range) {$(13_10)			sprite_index = spr_enemy2attack$(13_10)				if(canFire){$(13_10)				audio_play_sound(snd_projectile, .1, false)$(13_10)				instance_create_layer(x, y, layer, obj_bullet)$(13_10)				canFire = false$(13_10)				alarm[3] = 40$(13_10)				}$(13_10)	} else {$(13_10)		sprite_index = spr_enemy2	$(13_10)	}$(13_10)}$(13_10)	$(13_10)if(check_direction == true){$(13_10)	alarm_set(0, 60)$(13_10)	check_direction = false$(13_10)}$(13_10)	$(13_10)if(instance_exists(obj_player)){$(13_10)	//if approaching jumping location from the correct side$(13_10)	if (instance_place(x, y, obj_enemy_leftJumper) and hspeed < 0){$(13_10)		//if player is on the opposite side of enemy facing direction, turn them around$(13_10)		if(((obj_player.x - x) > 0) and (enemy_facing == -1)){$(13_10)			enemy_facing = 1$(13_10)		}$(13_10)		//if player is above the enemy then jump$(13_10)		else if((obj_player.y - y) < 0){$(13_10)			if(jumping == false){$(13_10)				vspeed -= jump_height$(13_10)				jumping = true$(13_10)				//interval before checking to change directions$(13_10)				alarm_set(0, 90)$(13_10)			}$(13_10)		}$(13_10)	} $(13_10)	else if(instance_place(x, y, obj_enemy_leftJumperMust) and hspeed < 0){$(13_10)		if(jumping == false){$(13_10)				vspeed -= jump_height$(13_10)				jumping = true$(13_10)				//interval before checking to change directions$(13_10)				alarm_set(0, 90)$(13_10)			}$(13_10)	}$(13_10)	//if approaching jumping location from the correct side$(13_10)	if (instance_place(x, y, obj_enemy_rightJumper) and hspeed > 0){$(13_10)		//if player is on the opposite side of enemy facing direction, turn them around$(13_10)		if(((obj_player.x - x) < 0) and (enemy_facing == 1)){$(13_10)			enemy_facing = -1$(13_10)		//if player is above the enemy then jump$(13_10)		} else if((obj_player.y - y) < -50){$(13_10)					if(jumping == false){$(13_10)						vspeed -= jump_height$(13_10)						jumping = true$(13_10)						//interval before checking to change directions$(13_10)						alarm_set(0, 90)$(13_10)					}$(13_10)				}$(13_10)	}$(13_10)	else if(instance_place(x, y, obj_enemy_rightJumperMust) and hspeed > 0){$(13_10)		if(jumping == false){$(13_10)			vspeed -= jump_height$(13_10)			jumping = true$(13_10)			//interval before checking to change directions$(13_10)			alarm_set(0, 90)$(13_10)		}$(13_10)	}$(13_10)	//if approaching jumping location from the opposite side$(13_10)	if ((instance_place(x, y, obj_enemy_leftJumper) || (instance_place(x, y, obj_enemy_leftJumperMust))) and hspeed > 0){$(13_10)		alarm_set(1,20)$(13_10)	}$(13_10)	//if approaching jumping location from the opposite side$(13_10)	if ((instance_place(x, y, obj_enemy_rightJumper) || (instance_place(x, y, obj_enemy_rightJumperMust))) and hspeed < 0){$(13_10)		alarm_set(1,20)$(13_10)	}$(13_10)}$(13_10)}$(13_10)if(vspeed = 0){$(13_10)	jumping = false	$(13_10)}$(13_10)$(13_10)x = clamp(x, 0, room_width-sprite_width/2) //restrict enemy to map$(13_10)if (y > room_height+sprite_height) {instance_destroy()}"
if instance_place(x, y+1, obj_fullBlock) {
	gravity = 0
	}				
else if instance_place(x, y+1, obj_halfBlock) {
	gravity = 0
	}
else {
	gravity = 0.4
	}	

if(instance_place(x - 1, y, obj_halfBlock)){
	x = x + 1
}
if(instance_place(x + 1, y, obj_halfBlock)){
	x = x - 1 
}

if (hp <= 0) {
	instance_destroy()
}

image_xscale = enemy_facing


if(!player_collided and !enemy_hit){
if instance_exists(obj_player){
    if (distance_to_object(obj_player) <= range
        and (abs(y-obj_player.y) <= obj_player.sprite_height/2)) {
            hspeed = 0
    } else {
		if (enemy_facing == 1){
			hspeed = enemy_facing	
		} else if(enemy_facing == -1){
			hspeed = enemy_facing
		}
	}
	if (distance_to_object(obj_player) <= range) {
			sprite_index = spr_enemy2attack
				if(canFire){
				audio_play_sound(snd_projectile, .1, false)
				instance_create_layer(x, y, layer, obj_bullet)
				canFire = false
				alarm[3] = 40
				}
	} else {
		sprite_index = spr_enemy2	
	}
}
	
if(check_direction == true){
	alarm_set(0, 60)
	check_direction = false
}
	
if(instance_exists(obj_player)){
	//if approaching jumping location from the correct side
	if (instance_place(x, y, obj_enemy_leftJumper) and hspeed < 0){
		//if player is on the opposite side of enemy facing direction, turn them around
		if(((obj_player.x - x) > 0) and (enemy_facing == -1)){
			enemy_facing = 1
		}
		//if player is above the enemy then jump
		else if((obj_player.y - y) < 0){
			if(jumping == false){
				vspeed -= jump_height
				jumping = true
				//interval before checking to change directions
				alarm_set(0, 90)
			}
		}
	} 
	else if(instance_place(x, y, obj_enemy_leftJumperMust) and hspeed < 0){
		if(jumping == false){
				vspeed -= jump_height
				jumping = true
				//interval before checking to change directions
				alarm_set(0, 90)
			}
	}
	//if approaching jumping location from the correct side
	if (instance_place(x, y, obj_enemy_rightJumper) and hspeed > 0){
		//if player is on the opposite side of enemy facing direction, turn them around
		if(((obj_player.x - x) < 0) and (enemy_facing == 1)){
			enemy_facing = -1
		//if player is above the enemy then jump
		} else if((obj_player.y - y) < -50){
					if(jumping == false){
						vspeed -= jump_height
						jumping = true
						//interval before checking to change directions
						alarm_set(0, 90)
					}
				}
	}
	else if(instance_place(x, y, obj_enemy_rightJumperMust) and hspeed > 0){
		if(jumping == false){
			vspeed -= jump_height
			jumping = true
			//interval before checking to change directions
			alarm_set(0, 90)
		}
	}
	//if approaching jumping location from the opposite side
	if ((instance_place(x, y, obj_enemy_leftJumper) || (instance_place(x, y, obj_enemy_leftJumperMust))) and hspeed > 0){
		alarm_set(1,20)
	}
	//if approaching jumping location from the opposite side
	if ((instance_place(x, y, obj_enemy_rightJumper) || (instance_place(x, y, obj_enemy_rightJumperMust))) and hspeed < 0){
		alarm_set(1,20)
	}
}
}
if(vspeed = 0){
	jumping = false	
}

x = clamp(x, 0, room_width-sprite_width/2) //restrict enemy to map
if (y > room_height+sprite_height) {instance_destroy()}