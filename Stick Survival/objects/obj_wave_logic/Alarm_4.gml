/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4D0D0236
/// @DnDArgument : "code" "if soundPlayed {$(13_10)	audio_play_sound(snd_gameComplete, .8, false)$(13_10)	soundPlayed = false$(13_10)}"
if soundPlayed {
	audio_play_sound(snd_gameComplete, .8, false)
	soundPlayed = false
}