// Controles do player
var left_key = keyboard_check(vk_left);
var right_key = keyboard_check(vk_right);
var jump_key = keyboard_check_pressed(vk_space);

// Movimento e a gravidade
hspd = (right_key - left_key) * spd;
vspd += grav; 

/*
// Primeiro formato de programação do pulo
if(jump_key and is_ground){
	vspd = -jump_force;
	is_ground = false;
}
*/

// Segundo formato de programação do pulo
if(jump_key and place_meeting(x, y+1, obj_wall)){
	vspd = -jump_force;
}

// Colisão horizontal
if(place_meeting(x+hspd, y, obj_wall)){
	while(!place_meeting(x+sign(hspd), y, obj_wall)){
		x += sign(hspd);
	}
	hspd = 0;
}
x += hspd;

// Colisão vertical
if(place_meeting(x, y+vspd, obj_wall)){
	while(!place_meeting(x, y+sign(vspd), obj_wall)){
		y += sign(vspd);
	}
	vspd = 0;
	//is_ground = true;
}
y += vspd;