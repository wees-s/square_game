obj_square.phy_speed_x += 5;
audio_play_sound(snd_impulse, 0, false);
instance_create_layer(40,2000,"Instances", obj_fast);