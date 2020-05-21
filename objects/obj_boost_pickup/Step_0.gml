if (place_meeting(x, y, obj_player)) {
	obj_player.boost += 1; 
	audio_play_sound(snd_collect, 1, false); 
	instance_destroy(self); 
}