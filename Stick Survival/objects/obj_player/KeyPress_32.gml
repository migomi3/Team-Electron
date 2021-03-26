/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 76334789
/// @DnDArgument : "code" "if (melee_active) {$(13_10)	instance_create_layer(x, y, layer, obj_sword)$(13_10)	state = 3$(13_10)	melee_active = false$(13_10)	alarm[0] = melee_cooldown$(13_10)}"
if (melee_active) {
	instance_create_layer(x, y, layer, obj_sword)
	state = 3
	melee_active = false
	alarm[0] = melee_cooldown
}