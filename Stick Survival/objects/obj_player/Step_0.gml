/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2671105C
/// @DnDArgument : "code" "if instance_place(x, y+1, obj_fullBlock) {gravity = 0}				//gravity implementation$(13_10)else if instance_place(x, y+1, obj_halfBlock) {gravity = 0}$(13_10)else {gravity = 0.4}$(13_10)$(13_10)image_xscale = facing$(13_10)$(13_10)if (state == 4) {sprite_index = spr_blocking}$(13_10)else if (state == 0) {$(13_10)	sprite_index = spr_idleStrip$(13_10)}$(13_10)else {	$(13_10)	if (state == 1) {sprite_index = spr_jumpStrip}$(13_10)	if (state == 2) {sprite_index = spr_runningStrip}$(13_10)	if (state == 3) {sprite_index = spr_attackingStrip}$(13_10)}$(13_10)$(13_10)if(!movement_blocked){$(13_10)	if (keyboard_check(ord("A")) || keyboard_check(vk_left)			//Player moves left$(13_10)			and !instance_place(x - move_speed, y, obj_fullBlock)$(13_10)			and !instance_place(x - move_speed, y, obj_halfBlock)){$(13_10)		hspeed = -move_speed$(13_10)		facing_direction = -1$(13_10)		if(!melee_active){$(13_10)			alarm[7] = 5$(13_10)		}$(13_10)		else{$(13_10)			state = 2	$(13_10)		}$(13_10)	}$(13_10)$(13_10)$(13_10)	if (keyboard_check(ord("D")) || keyboard_check(vk_right)		//player moves right$(13_10)			and !instance_place(x + move_speed, y, obj_fullBlock)	$(13_10)			and !instance_place(x + move_speed, y, obj_halfBlock)){$(13_10)		hspeed = move_speed$(13_10)		facing_direction = 1$(13_10)		if(!melee_active){$(13_10)			alarm[7] = 5$(13_10)		}$(13_10)		else{$(13_10)			state = 2	$(13_10)		}$(13_10)	}$(13_10)$(13_10)$(13_10)	if (keyboard_check(ord("W")) || keyboard_check(vk_up)) {		//player jumps when standing on block$(13_10)		if instance_place(x, y+1, obj_fullBlock){vspeed -= jump_height}$(13_10)		if instance_place(x, y+1, obj_halfBlock){vspeed -= jump_height}$(13_10)		state = 1$(13_10)	}$(13_10)}$(13_10)$(13_10)if (keyboard_check(vk_nokey) and !blocking and melee_active) {$(13_10)	state = 0$(13_10)	image_speed = 1$(13_10)	image_index = 0$(13_10)}$(13_10)$(13_10)if hp <= 0 {instance_destroy()}$(13_10)$(13_10)if (hspeed != 0) {$(13_10)	facing = sign(hspeed)$(13_10)	if (hspeed < 0) {hspeed += 1}$(13_10)	else {hspeed -=1}$(13_10)}$(13_10)$(13_10)x = clamp(x, 0, room_width-sprite_width/2) //restrict character to map$(13_10)if (y > room_height+sprite_height) {instance_destroy()}$(13_10)$(13_10)if(instance_place(x, y-1, obj_fullBlock)){$(13_10)	y -= 3	$(13_10)}"
if instance_place(x, y+1, obj_fullBlock) {gravity = 0}				//gravity implementation
else if instance_place(x, y+1, obj_halfBlock) {gravity = 0}
else {gravity = 0.4}

image_xscale = facing

if (state == 4) {sprite_index = spr_blocking}
else if (state == 0) {
	sprite_index = spr_idleStrip
}
else {	
	if (state == 1) {sprite_index = spr_jumpStrip}
	if (state == 2) {sprite_index = spr_runningStrip}
	if (state == 3) {sprite_index = spr_attackingStrip}
}

if(!movement_blocked){
	if (keyboard_check(ord("A")) || keyboard_check(vk_left)			//Player moves left
			and !instance_place(x - move_speed, y, obj_fullBlock)
			and !instance_place(x - move_speed, y, obj_halfBlock)){
		hspeed = -move_speed
		facing_direction = -1
		if(!melee_active){
			alarm[7] = 5
		}
		else{
			state = 2	
		}
	}


	if (keyboard_check(ord("D")) || keyboard_check(vk_right)		//player moves right
			and !instance_place(x + move_speed, y, obj_fullBlock)	
			and !instance_place(x + move_speed, y, obj_halfBlock)){
		hspeed = move_speed
		facing_direction = 1
		if(!melee_active){
			alarm[7] = 5
		}
		else{
			state = 2	
		}
	}


	if (keyboard_check(ord("W")) || keyboard_check(vk_up)) {		//player jumps when standing on block
		if instance_place(x, y+1, obj_fullBlock){vspeed -= jump_height}
		if instance_place(x, y+1, obj_halfBlock){vspeed -= jump_height}
		state = 1
	}
}

if (keyboard_check(vk_nokey) and !blocking and melee_active) {
	state = 0
	image_speed = 1
	image_index = 0
}

if hp <= 0 {instance_destroy()}

if (hspeed != 0) {
	facing = sign(hspeed)
	if (hspeed < 0) {hspeed += 1}
	else {hspeed -=1}
}

x = clamp(x, 0, room_width-sprite_width/2) //restrict character to map
if (y > room_height+sprite_height) {instance_destroy()}

if(instance_place(x, y-1, obj_fullBlock)){
	y -= 3	
}