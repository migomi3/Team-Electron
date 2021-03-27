/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 54479F81
/// @DnDArgument : "code" "if(enemies_left == 0 and wave_started == false and !game_complete){$(13_10)			draw_set_halign(fa_center)$(13_10)			draw_set_valign(fa_middle)$(13_10)$(13_10)			x_camera = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);$(13_10)			y_camera = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);$(13_10)$(13_10)			draw_set_font(fnt_game_over)$(13_10)			draw_set_color(c_white)$(13_10)			draw_text(x_camera, y_camera, "Wave Clear")	$(13_10)}$(13_10)if(game_complete){$(13_10)			draw_set_halign(fa_center)$(13_10)			draw_set_valign(fa_middle)$(13_10)$(13_10)			x_camera = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);$(13_10)			y_camera = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);$(13_10)$(13_10)			draw_set_font(fnt_game_over)$(13_10)			draw_set_color(c_white)$(13_10)			draw_text(x_camera, y_camera, "Game Complete")			$(13_10)}"
if(enemies_left == 0 and wave_started == false and !game_complete){
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)

			x_camera = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);
			y_camera = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);

			draw_set_font(fnt_game_over)
			draw_set_color(c_white)
			draw_text(x_camera, y_camera, "Wave Clear")	
}
if(game_complete){
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)

			x_camera = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);
			y_camera = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);

			draw_set_font(fnt_game_over)
			draw_set_color(c_white)
			draw_text(x_camera, y_camera, "Game Complete")			
}