/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0807A363
/// @DnDArgument : "code" "hp -= damage$(13_10)hspeed = pushback * sign(x-other.x)$(13_10)if hitCooldown {$(13_10)	alarm[1] = 15$(13_10)	audio_play_sound(snd_playerHit, .2, false)$(13_10)	hitCooldown = false$(13_10)}"
hp -= damage
hspeed = pushback * sign(x-other.x)
if hitCooldown {
	alarm[1] = 15
	audio_play_sound(snd_playerHit, .2, false)
	hitCooldown = false
}