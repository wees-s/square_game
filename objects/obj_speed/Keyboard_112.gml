if (instance_exists(obj_square)) with (obj_square) {
	obj_square.phy_speed_x += 8;
	instance_destroy(obj_speed);
	audio_play_sound(snd_impulse, 0, false);
	audio_play_sound(snd_laser, 0, false);
	audio_play_sound(snd_speed_voice, 0,false);
	instance_create_layer(40,2000,"Instances", obj_fast);
}



if (instance_exists(obj_circle)) with (obj_circle) {
	obj_circle.phy_speed_x += 8;
	instance_destroy(obj_speed);
	audio_play_sound(snd_impulse, 0, false);
	audio_play_sound(snd_laser, 0, false);
	audio_play_sound(snd_speed_voice, 0,false);
	instance_create_layer(40,2000,"Instances", obj_fast);
}



if (instance_exists(obj_square_1)) with (obj_square_1) {
	obj_square_1.phy_speed_x += 8;
	instance_destroy(obj_speed);
	
	audio_play_sound(snd_impulse, 0, false);
	audio_play_sound(snd_laser, 0, false);
	audio_play_sound(snd_speed_voice, 0,false);
	instance_create_layer(40,2000,"Instances", obj_fast);
}



