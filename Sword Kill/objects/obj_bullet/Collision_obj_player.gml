/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 527C6C91
/// @DnDArgument : "code" "if(!other.blocking){$(13_10)	other.hp -= damage$(13_10)	other.hspeed = other.pushback*sign(bulletSpeed)$(13_10)}$(13_10)instance_destroy()"
if(!other.blocking){
	other.hp -= damage
	other.hspeed = other.pushback*sign(bulletSpeed)
}
instance_destroy()