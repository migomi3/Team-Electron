/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2F8B2DB3
/// @DnDArgument : "code" "if keyboard_check_pressed(ord("P")) and instance_exists(obj_player) {$(13_10)	obj_player.hp = 10000$(13_10)	obj_player.pushback = 0$(13_10)}$(13_10)if keyboard_check_pressed(ord("K"))	{instance_destroy(obj_enemy1)} //kill all enemies$(13_10)if keyboard_check_pressed(ord("H")) and instance_exists(obj_player) {obj_player.hp = 10000}$(13_10)if keyboard_check_pressed(ord("2")) {instance_destroy(obj_enemy2)} //kill all type 2 enemies$(13_10)if keyboard_check_pressed(ord("3")) {instance_destroy(obj_enemy3)} //kill all type 3 enemies$(13_10)if keyboard_check_pressed(ord("R")) {//change to more difficult room$(13_10)		room_goto(Room2)$(13_10)		score = 0$(13_10)		} "
if keyboard_check_pressed(ord("P")) and instance_exists(obj_player) {
	obj_player.hp = 10000
	obj_player.pushback = 0
}
if keyboard_check_pressed(ord("K"))	{instance_destroy(obj_enemy1)} //kill all enemies
if keyboard_check_pressed(ord("H")) and instance_exists(obj_player) {obj_player.hp = 10000}
if keyboard_check_pressed(ord("2")) {instance_destroy(obj_enemy2)} //kill all type 2 enemies
if keyboard_check_pressed(ord("3")) {instance_destroy(obj_enemy3)} //kill all type 3 enemies
if keyboard_check_pressed(ord("R")) {//change to more difficult room
		room_goto(Room2)
		score = 0
		}