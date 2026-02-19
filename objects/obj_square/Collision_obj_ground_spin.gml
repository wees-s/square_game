obj_square.phy_angular_velocity += power(200,2);
obj_square.phy_speed_x += 1;
obj_square.phy_speed_y += +5;
audio_play_sound(snd_spin, 0, false);
instance_create_layer(40,2000,"Instances", obj_spin);
