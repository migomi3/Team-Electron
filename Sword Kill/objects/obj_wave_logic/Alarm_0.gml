/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3EECDEF3
/// @DnDArgument : "code" "randomize()$(13_10)spawn_location = irandom(3) + 1$(13_10)$(13_10)switch(spawn_location){$(13_10)	case 1: instance_create_layer(obj_spawner1.x, obj_spawner1.y, "Instances", obj_enemy1);$(13_10)			break$(13_10)	case 2: instance_create_layer(obj_spawner2.x, obj_spawner2.y, "Instances", obj_enemy1);$(13_10)			break$(13_10)	case 3: instance_create_layer(obj_spawner3.x, obj_spawner3.y, "Instances", obj_enemy1);$(13_10)			break$(13_10)	case 4: instance_create_layer(obj_spawner4.x, obj_spawner4.y, "Instances", obj_enemy1);$(13_10)			break$(13_10)}$(13_10)spawn_enemy = true"
randomize()
spawn_location = irandom(3) + 1

switch(spawn_location){
	case 1: instance_create_layer(obj_spawner1.x, obj_spawner1.y, "Instances", obj_enemy1);
			break
	case 2: instance_create_layer(obj_spawner2.x, obj_spawner2.y, "Instances", obj_enemy1);
			break
	case 3: instance_create_layer(obj_spawner3.x, obj_spawner3.y, "Instances", obj_enemy1);
			break
	case 4: instance_create_layer(obj_spawner4.x, obj_spawner4.y, "Instances", obj_enemy1);
			break
}
spawn_enemy = true