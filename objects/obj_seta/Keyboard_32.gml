instance_create_layer(80, y, "Instances", obj_square); //Estou criando o objeto 
//instance_create_layer(-20, y, "Instances", obj_explosion);
instance_create_layer(40,2000, "Instances", obj_boom);
instance_destroy();
audio_play_sound(snd_explosion,0,false);
audio_play_sound(snd_laser,0,false);