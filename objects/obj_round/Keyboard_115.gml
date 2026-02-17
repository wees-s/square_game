if (instance_exists(obj_square)){
	var x_pos = obj_square.x;
	var y_pos = obj_square.y;
	var x_speed = obj_square.phy_speed_x;
	var y_speed = obj_square.phy_speed_y;
	var angulo = obj_square.phy_rotation;
	var torque = obj_square.phy_angular_velocity;
	instance_create_layer(40,2000,"Instances", obj_circle_power);
	
	instance_destroy(obj_square);
	var novo_circulo = instance_create_depth(x_pos, y_pos,0,obj_circle);
	
	novo_circulo.alarm[0] = 1200;
	
	novo_circulo.phy_speed_x = x_speed;
	novo_circulo.phy_speed_y = y_speed;
	novo_circulo.phy_rotation = angulo;
	novo_circulo.phy_angular_velocity = torque;
}
instance_destroy(obj_round);