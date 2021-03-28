/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3523703B
/// @DnDArgument : "code" "if (melee_active) {$(13_10)	instance_create_layer(x, y, layer, obj_sword)$(13_10)	state = 3$(13_10)	image_speed = 1$(13_10)	image_index = 0$(13_10)	melee_active = false$(13_10)	alarm[0] = melee_cooldown$(13_10)}"
if (melee_active) {
	instance_create_layer(x, y, layer, obj_sword)
	state = 3
	image_speed = 1
	image_index = 0
	melee_active = false
	alarm[0] = melee_cooldown
}