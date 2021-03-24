/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2F8B2DB3
/// @DnDArgument : "code" "if keyboard_check_pressed(ord("H")) and instance_exists(obj_player) {obj_player.hp = 10000}$(13_10)if keyboard_check_pressed(ord("K")) {instance_destroy(obj_enemy1)} //kill all enemies"
if keyboard_check_pressed(ord("H")) and instance_exists(obj_player) {obj_player.hp = 10000}
if keyboard_check_pressed(ord("K")) {instance_destroy(obj_enemy1)} //kill all enemies