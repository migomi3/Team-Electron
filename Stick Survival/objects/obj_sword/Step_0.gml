/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19CD6660
/// @DnDArgument : "code" "if instance_exists(obj_player){$(13_10)	image_angle -= spin_rate$(13_10)	if(obj_player.facing == 1){$(13_10)		x = obj_player.x + 15$(13_10)	}$(13_10)	else {$(13_10)		x = obj_player.x +-15$(13_10)	}$(13_10)	y = obj_player.y$(13_10)	if (image_angle > 180 || image_angle < -90){$(13_10)		instance_destroy()$(13_10)	}$(13_10)} else {instance_destroy()}"
if instance_exists(obj_player){
	image_angle -= spin_rate
	if(obj_player.facing == 1){
		x = obj_player.x + 15
	}
	else {
		x = obj_player.x +-15
	}
	y = obj_player.y
	if (image_angle > 180 || image_angle < -90){
		instance_destroy()
	}
} else {instance_destroy()}