/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C633A4E
/// @DnDArgument : "code" "draw_set_halign(fa_center)$(13_10)draw_set_valign(fa_middle)$(13_10)$(13_10)x_camera = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);$(13_10)y_camera = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);$(13_10)$(13_10)draw_set_font(fnt_game_over)$(13_10)draw_set_color(c_white)$(13_10)draw_text(x_camera, y_camera, "Game Over")$(13_10)$(13_10)draw_set_font(fnt_restart_prompt)$(13_10)draw_text(x_camera, y_camera + 75, "Press R to restart!")$(13_10)$(13_10)"
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

x_camera = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);
y_camera = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);

draw_set_font(fnt_game_over)
draw_set_color(c_white)
draw_text(x_camera, y_camera, "Game Over")

draw_set_font(fnt_restart_prompt)
draw_text(x_camera, y_camera + 75, "Press R to restart!")