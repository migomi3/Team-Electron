/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2671105C
/// @DnDArgument : "code" "if instance_place(x, y+1, obj_block) {gravity = 0}				//gravity implementation$(13_10)else {gravity = 0.5}											//TODO: needs fixing$(13_10)$(13_10)if (keyboard_check(ord("A")) || keyboard_check(vk_left)			//Player moves left$(13_10)		and !instance_place(x - move_speed, y, obj_block)){$(13_10)	x -= move_speed$(13_10)	image_xscale = -1$(13_10)}$(13_10)$(13_10)if (keyboard_check(ord("D")) || keyboard_check(vk_right)		//player moves right$(13_10)		and !instance_place(x + move_speed, y, obj_block)){$(13_10)	x += move_speed$(13_10)	image_xscale = 1$(13_10)}$(13_10)$(13_10)if (keyboard_check(ord("W")) || keyboard_check(vk_up)) {		//player jumps when standing on block$(13_10)	if instance_place(x, y+6, obj_block){vspeed -= jump_height}$(13_10)}"
if instance_place(x, y+1, obj_block) {gravity = 0}				//gravity implementation
else {gravity = 0.5}											//TODO: needs fixing

if (keyboard_check(ord("A")) || keyboard_check(vk_left)			//Player moves left
		and !instance_place(x - move_speed, y, obj_block)){
	x -= move_speed
	image_xscale = -1
}

if (keyboard_check(ord("D")) || keyboard_check(vk_right)		//player moves right
		and !instance_place(x + move_speed, y, obj_block)){
	x += move_speed
	image_xscale = 1
}

if (keyboard_check(ord("W")) || keyboard_check(vk_up)) {		//player jumps when standing on block
	if instance_place(x, y+6, obj_block){vspeed -= jump_height}
}