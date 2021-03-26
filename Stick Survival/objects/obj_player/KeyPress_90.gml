/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0CA643F8
/// @DnDArgument : "code" "if(facing == 1){$(13_10)	hspeed = dash_length$(13_10)}$(13_10)else {$(13_10)	hspeed = dash_length * -1	$(13_10)}$(13_10)movement_blocked = true$(13_10)alarm[3] = 30"
if(facing == 1){
	hspeed = dash_length
}
else {
	hspeed = dash_length * -1	
}
movement_blocked = true
alarm[3] = 30