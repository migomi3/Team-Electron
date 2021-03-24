/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 173E06B2
/// @DnDArgument : "code" "gravity_direction = 270$(13_10)image_speed = .25$(13_10)$(13_10)enum States {$(13_10)	idle,$(13_10)	jumping,$(13_10)	runLeft,$(13_10)	runRight$(13_10)}$(13_10)state = 0"
gravity_direction = 270
image_speed = .25

enum States {
	idle,
	jumping,
	runLeft,
	runRight
}
state = 0