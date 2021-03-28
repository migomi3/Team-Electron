/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 40FDEFBD
/// @DnDArgument : "code" "if(!blocking and can_block){$(13_10)	blocking = true$(13_10)	movement_blocked = true$(13_10)	alarm[4] = block_length$(13_10)	state = 4$(13_10)	audio_play_sound(snd_swordSwing, .15, false)$(13_10)	can_block = false$(13_10)}"
if(!blocking and can_block){
	blocking = true
	movement_blocked = true
	alarm[4] = block_length
	state = 4
	audio_play_sound(snd_swordSwing, .15, false)
	can_block = false
}