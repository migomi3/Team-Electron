/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0807A363
/// @DnDArgument : "code" "if hitCooldown {$(13_10)	hp -= damage$(13_10)	hspeed = pushback * sign(x-other.x)$(13_10)	alarm[1] = 30$(13_10)	audio_play_sound(snd_playerHit, .2, false)$(13_10)	hitCooldown = false$(13_10)	movement_blocked = true$(13_10)	alarm[2] = 10$(13_10)}"
if hitCooldown {
	hp -= damage
	hspeed = pushback * sign(x-other.x)
	alarm[1] = 30
	audio_play_sound(snd_playerHit, .2, false)
	hitCooldown = false
	movement_blocked = true
	alarm[2] = 10
}