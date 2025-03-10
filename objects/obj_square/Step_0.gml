// 🟡 1. CONTROLE DA CÂMERA
var target = self; // A câmera segue este objeto (obj_square)
var cam_width = camera_get_view_width(view_camera[0]);
var cam_height = camera_get_view_height(view_camera[0]);

// Centraliza a câmera no objeto
var cam_x = target.phy_position_x - cam_width / 2;
var cam_y = target.phy_position_y - cam_height / 2;

// Aplica limite vertical
var min_cam_y = 0;
var max_cam_y = 3125 - cam_height;
cam_y = clamp(cam_y, min_cam_y, max_cam_y);

// Define a posição da câmera
camera_set_view_pos(view_camera[0], cam_x, cam_y);


// 🟡 2. GERADOR DE CHÃO INFINITO
var ground_width = 1366; 
var ground_y = 2700;

// Área visível da câmera
var cam_a = camera_get_view_x(view_camera[0]);
var cam_w = camera_get_view_width(view_camera[0]);

// Cria chão automaticamente
if (!instance_exists(obj_ground_1) && !instance_exists(obj_ground_2)&& !instance_exists(obj_ground_speed)&& !instance_exists(obj_ground_fly)&& !instance_exists(obj_ground_spin)) {
    var ground_object = choose(obj_ground_1, obj_ground_2, obj_ground_speed);
    instance_create_depth(cam_a, ground_y, depth, ground_object);
} else {
    var last_tile_x = -1;
    with (obj_ground_1) last_tile_x = max(last_tile_x, x);
    with (obj_ground_2) last_tile_x = max(last_tile_x, x);
	with (obj_ground_speed) last_tile_x = max(last_tile_x, x);
	with (obj_ground_fly) last_tile_x = max(last_tile_x, x);
	with (obj_ground_spin) last_tile_x = max(last_tile_x, x);

    if (last_tile_x + ground_width * 0.75 < cam_a + cam_w) {
        var ground_object = choose(obj_ground_1, obj_ground_2,obj_ground_1, obj_ground_2,obj_ground_1, obj_ground_2, obj_ground_speed,obj_ground_fly,obj_ground_spin);
        instance_create_depth(last_tile_x + ground_width, ground_y, depth, ground_object);
    }
}


// 🟡 3. CÁLCULO DE DISTÂNCIA PERCORRIDA COM FÍSICA
// Calcula a distância somente se estiver em movimento
/*if (phy_speed > 0.0001) {
    var dx = phy_position_x - previous_x;
    var dy = phy_position_y - previous_y;
    var distance = sqrt(dx * dx + dy * dy);

    // Soma a distância
    distance_traveled += distance;
}

// Atualiza a posição anterior após o cálculo
previous_x = phy_position_x;
previous_y = phy_position_y;

*/
physics_world_update_iterations(100)