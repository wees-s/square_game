if (instance_exists(obj_square)) with (obj_square) {
obj_square.phy_angular_velocity += power(200,2);
instance_destroy(obj_torque);
audio_play_sound(snd_spin, 0, false);
audio_play_sound(snd_spin_voice, 0, false);
instance_create_layer(40,2000,"Instances", obj_spin);
}



if (instance_exists(obj_circle)) with (obj_circle) {
obj_circle.phy_angular_velocity += power(200,2);
instance_destroy(obj_torque);
audio_play_sound(snd_spin, 0, false);
audio_play_sound(snd_spin_voice, 0, false);
instance_create_layer(40,2000,"Instances", obj_spin);
}



if (instance_exists(obj_square_1)) with (obj_square_1) {
obj_square_1.phy_angular_velocity += power(200,2);
instance_destroy(obj_torque);
audio_play_sound(snd_spin, 0, false);
audio_play_sound(snd_spin_voice, 0, false);
instance_create_layer(40,2000,"Instances", obj_spin);
}