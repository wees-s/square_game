if (instance_exists(obj_square)) with (obj_square) {
	obj_square.phy_speed_y = -5;
	instance_destroy(obj_speed_y);
	audio_play_sound(snd_rocket, 0,false);
	audio_play_sound(snd_fly_voice, 0,false);
	instance_create_layer(40,2000,"Instances", obj_fly);
}



if (instance_exists(obj_circle)) with (obj_circle) {
	obj_circle.phy_speed_y = -5;
	instance_destroy(obj_speed_y);
	audio_play_sound(snd_rocket, 0,false);
	audio_play_sound(snd_fly_voice, 0,false);
	instance_create_layer(40,2000,"Instances", obj_fly);
}



if (instance_exists(obj_square_1)) with (obj_square_1) {
	obj_square_1.phy_speed_y = -5;
	instance_destroy(obj_speed_y);
	audio_play_sound(snd_rocket, 0,false);
	audio_play_sound(snd_fly_voice, 0,false);
	instance_create_layer(40,2000,"Instances", obj_fly);
}