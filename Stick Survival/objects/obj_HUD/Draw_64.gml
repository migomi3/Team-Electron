/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 68EA9EAE
/// @DnDArgument : "code" "if instance_exists(obj_player){$(13_10)	draw_healthbar(32, 28, 256, 52, obj_player.hp, backgroundCol, noHealthCol, Healthcol, $(13_10)		0, true, true)$(13_10)	draw_set_font(fnt_score)$(13_10)	draw_set_halign(fa_left)$(13_10)	draw_set_valign(fa_top)$(13_10)	draw_text(64, 58, "Score: " + string(score) + "\nEnemies Remaining: " + $(13_10)		string(obj_wave_logic.enemies_left) + "\nWave: " + string(obj_wave_logic.wave_number))$(13_10)}$(13_10)$(13_10)if(instance_exists(obj_player) = false){$(13_10)	instance_create_layer(view_camera[0]/2, view_camera[0]/2, "Instances", obj_game_over)$(13_10)	$(13_10)}$(13_10)"
if instance_exists(obj_player){
	draw_healthbar(32, 28, 256, 52, obj_player.hp, backgroundCol, noHealthCol, Healthcol, 
		0, true, true)
	draw_set_font(fnt_score)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_text(64, 58, "Score: " + string(score) + "\nEnemies Remaining: " + 
		string(obj_wave_logic.enemies_left) + "\nWave: " + string(obj_wave_logic.wave_number))
}

if(instance_exists(obj_player) = false){
	instance_create_layer(view_camera[0]/2, view_camera[0]/2, "Instances", obj_game_over)
	
}