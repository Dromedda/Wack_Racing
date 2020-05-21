if (place_meeting(x, y, obj_player)) {
	if (!audio_is_playing(snd_finnish)) {
		audio_play_sound(snd_finnish, 1, false); 	
	}
	
	room_goto_next(); 	
	
}