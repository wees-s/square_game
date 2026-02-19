/*// Aplica impulso (acumula velocidade de verdade)
physics_apply_impulse(
    obj_circle.phy_position_x,
    obj_circle.phy_position_y,
    5,
    1
);

// Feedback
audio_play_sound(snd_impulse, 0, false);
instance_create_layer(40, 2000, "Instances", obj_fast);
*/
obj_circle.phy_speed_x += 5;
obj_circle.phy_speed_y += +1;
audio_play_sound(snd_impulse, 0, false);
instance_create_layer(40,2000,"Instances", obj_fast);