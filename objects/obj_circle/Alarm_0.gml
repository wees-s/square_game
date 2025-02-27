if (instance_exists(obj_circle)){
	var x_pos = obj_circle.x;
	var y_pos = obj_circle.y;
	var x_speed = obj_circle.phy_speed_x;
	var y_speed = obj_circle.phy_speed_y;
	var angulo = obj_circle.phy_rotation;
	var torque = obj_circle.phy_angular_velocity;
	
	instance_destroy(obj_circle);
	var novo_square = instance_create_depth(x_pos, y_pos,0,obj_square_1);
	
	novo_square.alarm[0] = 1200;
	novo_square.phy_speed_x = x_speed;
	novo_square.phy_speed_y = y_speed;
	novo_square.phy_rotation = angulo;
	novo_square.phy_angular_velocity = torque;
}