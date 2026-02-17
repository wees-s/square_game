// =====================================================
// 🟡 1. CONTROLE DA CÂMERA COM ZOOM DINÂMICO
// =====================================================

var target = self;

// -------- ZOOM BASEADO NA VELOCIDADE --------
var current_speed = phy_speed;

// Normaliza velocidade (ajuste 12 conforme gameplay)
var speed_norm = clamp(current_speed / 12, 0, 1);

// Calcula zoom alvo
var target_zoom = lerp(min_zoom, max_zoom, speed_norm);

// Suaviza zoom
current_zoom = lerp(current_zoom, target_zoom, zoom_lerp);

// Aplica tamanho da câmera
var cam_width  = base_cam_w * current_zoom;
var cam_height = base_cam_h * current_zoom;

camera_set_view_size(view_camera[0], cam_width, cam_height);

// -------- POSICIONAMENTO DA CÂMERA --------
var cam_x = target.phy_position_x - cam_width  / 2;
var cam_y = target.phy_position_y - cam_height / 2;

// Limite vertical
var min_cam_y = 0;
var max_cam_y = 3125 - cam_height;
cam_y = clamp(cam_y, min_cam_y, max_cam_y);

// Define posição da câmera
camera_set_view_pos(view_camera[0], cam_x, cam_y);



// =====================================================
// 🟡 2. GERADOR DE CHÃO INFINITO
// =====================================================

var ground_width = 1366;
var ground_y = 2700;

// Área visível da câmera
var cam_a = camera_get_view_x(view_camera[0]);
var cam_w = cam_width;

// Criação inicial
if (
    !instance_exists(obj_ground_1) &&
    !instance_exists(obj_ground_2) &&
    !instance_exists(obj_ground_speed) &&
    !instance_exists(obj_ground_fly) &&
    !instance_exists(obj_ground_spin)
) {
    var ground_object = choose(obj_ground_1, obj_ground_2, obj_ground_speed);
    instance_create_depth(cam_a, ground_y, depth, ground_object);
}
else {
    var last_tile_x = -1;

    with (obj_ground_1)      last_tile_x = max(last_tile_x, x);
    with (obj_ground_2)      last_tile_x = max(last_tile_x, x);
    with (obj_ground_speed)  last_tile_x = max(last_tile_x, x);
    with (obj_ground_fly)    last_tile_x = max(last_tile_x, x);
    with (obj_ground_spin)   last_tile_x = max(last_tile_x, x);

    if (last_tile_x + ground_width * 0.75 < cam_a + cam_w) {
        var ground_object = choose(
            obj_ground_1, obj_ground_2,
            obj_ground_1, obj_ground_2,
            obj_ground_1, obj_ground_2,
            obj_ground_speed,
            obj_ground_fly,
            obj_ground_spin
        );
        instance_create_depth(last_tile_x + ground_width, ground_y, depth, ground_object);
    }
}



// =====================================================
// 🟡 3. CÁLCULO DE DISTÂNCIA PERCORRIDA (FÍSICA)
// =====================================================

if (phy_speed > 0.0001) {
    var dx = phy_position_x - previous_x;
    var dy = phy_position_y - previous_y;

    distance_traveled += sqrt(dx * dx + dy * dy);
}

// Atualiza posição anterior
previous_x = phy_position_x;
previous_y = phy_position_y;



// =====================================================
// 🟡 4. AJUSTE DE FÍSICA
// =====================================================

physics_world_update_iterations(100);
