/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19ED9DAC
/// @DnDArgument : "code" "if(instance_exists(obj_player)){$(13_10)	hspeed = pushback * obj_player.image_xscale$(13_10)	if sndCooldown {$(13_10)		audio_play_sound(snd_enemyHit, .2, false)$(13_10)		alarm[2] = 15$(13_10)		sndCooldown = false$(13_10)	}$(13_10)}"
if(instance_exists(obj_player)){
	hspeed = pushback * obj_player.image_xscale
	if sndCooldown {
		audio_play_sound(snd_enemyHit, .2, false)
		alarm[2] = 15
		sndCooldown = false
	}
}