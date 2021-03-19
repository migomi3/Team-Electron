/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19CD6660
/// @DnDArgument : "code" "image_angle -= spin_rate$(13_10)x = obj_player.x$(13_10)y = obj_player.y$(13_10)if (image_angle > 180 || image_angle < -90){$(13_10)	instance_destroy()$(13_10)}"
image_angle -= spin_rate
x = obj_player.x
y = obj_player.y
if (image_angle > 180 || image_angle < -90){
	instance_destroy()
}