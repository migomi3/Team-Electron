/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 09B6A7F5
/// @DnDArgument : "code" "//State trigger for making alarm system work$(13_10)spawn_enemy = true$(13_10)$(13_10)//Interval of time between enemy spawning$(13_10)enemy1_spawn_interval = 120$(13_10)enemy2_spawn_interval = 200$(13_10)$(13_10)//How many of each enemy will be spawned in this wave$(13_10)spawn_enemy1 = 1$(13_10)spawn_left_enemy1 = spawn_enemy1$(13_10)spawn_enemy2 = 0$(13_10)spawn_left_enemy2 = spawn_enemy2$(13_10)$(13_10)//Count of how many of each enemy has been killed$(13_10)killed_enemy1 = 0$(13_10)killed_enemy2 = 0$(13_10)$(13_10)//Number of enemies player has left to kill$(13_10)enemies_left = spawn_enemy1 + spawn_enemy2 - killed_enemy1 - killed_enemy2$(13_10)$(13_10)//Variable used in irandom to determine which enemy type will spawn$(13_10)enemy_spawn_type = 0$(13_10)$(13_10)wave_started = true$(13_10)wave_delay = 500$(13_10)wave_number = 1$(13_10)wave_cleared = false"
//State trigger for making alarm system work
spawn_enemy = true

//Interval of time between enemy spawning
enemy1_spawn_interval = 120
enemy2_spawn_interval = 200

//How many of each enemy will be spawned in this wave
spawn_enemy1 = 1
spawn_left_enemy1 = spawn_enemy1
spawn_enemy2 = 0
spawn_left_enemy2 = spawn_enemy2

//Count of how many of each enemy has been killed
killed_enemy1 = 0
killed_enemy2 = 0

//Number of enemies player has left to kill
enemies_left = spawn_enemy1 + spawn_enemy2 - killed_enemy1 - killed_enemy2

//Variable used in irandom to determine which enemy type will spawn
enemy_spawn_type = 0

wave_started = true
wave_delay = 500
wave_number = 1
wave_cleared = false