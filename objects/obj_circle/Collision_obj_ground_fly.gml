obj_circle.phy_speed_y += -3;
obj_circle.phy_speed_x += 1;
audio_play_sound(snd_rocket, 0,false);
instance_create_layer(40,2000,"Instances", obj_fly);