/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7CAF3DD9
/// @DnDArgument : "code" "if(instance_exists(obj_player)){$(13_10)	if sndCooldown {$(13_10)		audio_play_sound(snd_enemyHit, .2, false)$(13_10)		alarm[2] = 15$(13_10)		sndCooldown = false$(13_10)	}$(13_10)}$(13_10)$(13_10)/*if(!enemy_hit){$(13_10)	hspeed = 1.8 * sign(x-other.x)$(13_10)	alarm[3] = 10$(13_10)	enemy_hit = true$(13_10)}*/"
if(instance_exists(obj_player)){
	if sndCooldown {
		audio_play_sound(snd_enemyHit, .2, false)
		alarm[2] = 15
		sndCooldown = false
	}
}

/*if(!enemy_hit){
	hspeed = 1.8 * sign(x-other.x)
	alarm[3] = 10
	enemy_hit = true
}*//**/