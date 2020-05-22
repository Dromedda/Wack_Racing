//key input
var key_left  = keyboard_check(ord("A")); 
var key_right = keyboard_check(ord("D")); 
var key_forward = keyboard_check(ord("W")); 
var key_brake = keyboard_check(ord("S")); 
var key_boost = keyboard_check_pressed(vk_space); 

//boosting
if (key_boost) && (boost >= 1) {	
	if (boost_timer == boost_timer_max) {
		boost--; 
		boosting = true; 	
	}
}

if (boosting) {
	boost_timer--
	
	move_speed = move_speed_boost; 
	
	if (boost_timer <= 0) {
		boosting = false; 
		
		//SKETCH	
		boost_timer = boost_timer_max; 
	
	
	}
} else {
	move_speed = move_speed_org; 	
}

if (place_meeting(x, y, obj_wall) && !crashed) {
	if (!audio_is_playing(snd_crash)) {	
		audio_play_sound(snd_crash, 1, false); 
	}
	crashed = true; 
	
}

if (crashed) {
	f_speed = 0; 
	steering_force = 0; 
	speed = 0; 
	
	death_delay--; 
	
	if (death_delay >= 30) {
		part_particles_create(global.ps, x, y, global.pt_crash, 60); 	
	}
	
	if (death_delay <= 0) {
		room_restart(); 	
	}
}

//Going Places 
if (key_forward) {
	if (f_speed < move_speed) {	
		f_speed += move_speed_acc; 
	} else {
		f_speed = move_speed; 
	}
} else {
	if (key_brake) {
		move_speed_fric = move_speed_brake;	
	} else {
		move_speed_fric = move_speed_fric_org; 	
	}
	
	if (f_speed > 0) {	
		f_speed -= move_speed_fric; 
	} else {
		f_speed = 0;  
	}
}

//Steering
if (f_speed != 0) {
	if (key_left) {
		dir += steering_force; 
	}

	if (key_right) {
		dir -= steering_force; 
	}
}

if (dir >= 360) || (dir <= -360) {
	dir = 0; 
}

//Particles
if ((f_speed >= 4) && (key_forward)) {
	part_particles_create(global.ps, x, y, global.pt_smoke, 16); 
}

if (boosting) {
	part_particles_create(global.ps, x, y, global.pt_boost, 48); 	
}

//APPLY SHIT 
direction = dir + 90; 
speed = f_speed; 
image_angle = dir; 

//DEBUG
println(f_speed, dir); 

//SOUND
if (key_forward && !boosting) {
	if (!audio_is_playing(snd_going)) {
		audio_play_sound(snd_going, 1, true); 	
	}
} else {
	audio_stop_sound(snd_going);	
}

if (boosting) {
	if (!audio_is_playing(snd_boost)) {
		audio_play_sound(snd_boost, 1, true); 	
	}
} else {
	audio_stop_sound(snd_boost);	
}

