/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 68EA9EAE
/// @DnDArgument : "code" "if instance_exists(obj_player){$(13_10)	draw_healthbar(16, 16, 256, 40, obj_player.hp, backgroundCol, noHealthCol, Healthcol, $(13_10)		0, true, true)$(13_10)}$(13_10)draw_text(55, 55, "Score: " + string(score))"
if instance_exists(obj_player){
	draw_healthbar(16, 16, 256, 40, obj_player.hp, backgroundCol, noHealthCol, Healthcol, 
		0, true, true)
}
draw_text(55, 55, "Score: " + string(score))