/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3E85F780
/// @DnDArgument : "code" "if (direction > 90 and direction < 270)$(13_10){$(13_10)	image_xscale = -1;$(13_10)}$(13_10)else$(13_10){$(13_10)	image_xscale = 1;$(13_10)}$(13_10)$(13_10)if (hp <= 0) {instance_destroy()}"
if (direction > 90 and direction < 270)
{
	image_xscale = -1;
}
else
{
	image_xscale = 1;
}

if (hp <= 0) {instance_destroy()}