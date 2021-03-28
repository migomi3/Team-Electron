/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1FA575B1
/// @DnDArgument : "code" "other.hp -= damage$(13_10)if(damage_inflicted == false){$(13_10)	if(hspeed > 0){$(13_10)	other.hspeed -= 4	$(13_10)	} else{$(13_10)		other.hspeed += 4$(13_10)	}$(13_10)	damage_inflicted = true$(13_10)}"
other.hp -= damage
if(damage_inflicted == false){
	if(hspeed > 0){
	other.hspeed -= 4	
	} else{
		other.hspeed += 4
	}
	damage_inflicted = true
}