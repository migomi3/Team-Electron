/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 09C75571
/// @DnDArgument : "code" "if (hp <= 0) {$(13_10)	instance_destroy()$(13_10)}$(13_10)if (hspeed != 0) {$(13_10)	if (hspeed < 0) {hspeed += 1}$(13_10)	else {hspeed -=1}$(13_10)}"
if (hp <= 0) {
	instance_destroy()
}
if (hspeed != 0) {
	if (hspeed < 0) {hspeed += 1}
	else {hspeed -=1}
}