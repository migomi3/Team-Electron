/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2671105C
/// @DnDArgument : "code" "if instance_place(x, y+1, obj_fullBlock) {gravity = 0}				//gravity implementation$(13_10)else if instance_place(x, y+1, obj_halfBlock) {gravity = 0}$(13_10)else {gravity = 0.4}											//TODO: needs fixing$(13_10)$(13_10)if (keyboard_check(ord("A")) || keyboard_check(vk_left)			//Player moves left$(13_10)		and !instance_place(x - move_speed, y, obj_fullBlock)$(13_10)		and !instance_place(x - move_speed, y, obj_halfBlock)){$(13_10)	x -= move_speed$(13_10)	image_xscale = -1$(13_10)}$(13_10)$(13_10)if (keyboard_check(ord("D")) || keyboard_check(vk_right)		//player moves right$(13_10)		and !instance_place(x + move_speed, y, obj_fullBlock)$(13_10)		and !instance_place(x + move_speed, y, obj_halfBlock)){$(13_10)	x += move_speed$(13_10)	image_xscale = 1$(13_10)}$(13_10)$(13_10)if (keyboard_check(ord("W")) || keyboard_check(vk_up)) {		//player jumps when standing on block$(13_10)	if instance_place(x, y+1, obj_fullBlock){vspeed -= jump_height}$(13_10)	if instance_place(x, y+1, obj_halfBlock){vspeed -= jump_height}$(13_10)}$(13_10)$(13_10)if (keyboard_check_pressed(vk_space) and melee_active) {$(13_10)	instance_create_layer(x, y, layer, obj_sword)$(13_10)	melee_active = false$(13_10)	alarm[0] = melee_cooldown$(13_10)}$(13_10)$(13_10)if hp <= 0 {instance_destroy()}"
if instance_place(x, y+1, obj_fullBlock) {gravity = 0}				//gravity implementation
else if instance_place(x, y+1, obj_halfBlock) {gravity = 0}
else {gravity = 0.4}											//TODO: needs fixing

if (keyboard_check(ord("A")) || keyboard_check(vk_left)			//Player moves left
		and !instance_place(x - move_speed, y, obj_fullBlock)
		and !instance_place(x - move_speed, y, obj_halfBlock)){
	x -= move_speed
	image_xscale = -1
}

if (keyboard_check(ord("D")) || keyboard_check(vk_right)		//player moves right
		and !instance_place(x + move_speed, y, obj_fullBlock)
		and !instance_place(x + move_speed, y, obj_halfBlock)){
	x += move_speed
	image_xscale = 1
}

if (keyboard_check(ord("W")) || keyboard_check(vk_up)) {		//player jumps when standing on block
	if instance_place(x, y+1, obj_fullBlock){vspeed -= jump_height}
	if instance_place(x, y+1, obj_halfBlock){vspeed -= jump_height}
}

if (keyboard_check_pressed(vk_space) and melee_active) {
	instance_create_layer(x, y, layer, obj_sword)
	melee_active = false
	alarm[0] = melee_cooldown
}

if hp <= 0 {instance_destroy()}