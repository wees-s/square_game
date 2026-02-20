// =====================================================
// SECRET PORTAL HUD
// =====================================================
portal_text_timer = 0;
portal_text_time  = 200;




portal_cooldown = 0;
// =====================================================
// PORTAL
// =====================================================
portal_y_limit  = room_height + 200; // limite abaixo do mapa
portal_cooldown = 0;

// =====================================================
// CÂMERA
// =====================================================
base_cam_w = camera_get_view_width(view_camera[0]);
base_cam_h = camera_get_view_height(view_camera[0]);

current_zoom     = 1;
cam_speed_offset = 0;

// =====================================================
// DISTÂNCIA
// =====================================================
previous_x = phy_position_x;
previous_y = phy_position_y;
distance_traveled = 0;

// Controle de inatividade
tempo_limite     = 0;
tempo_inativo    = 0;
ultima_distancia = 0;

// Distância
distance_traveled = 0;
posicao_anterior_x = x;

// Câmera (caso esteja aí ainda)
cam_offset_x = 0;
cam_shake_x  = 0;
cam_shake_y  = 0;
current_zoom = 1;


cam_offset_x = 0;
cam_shake_x  = 0;
cam_shake_y  = 0;
cam_x        = x;
cam_y        = y;
current_zoom = 1;

cam_speed_offset = 0;


velocidade_suave = 0;

sprite_index = spr_square_1;
image_angle = 0;
image_xscale = 1;
image_yscale = 1;
image_speed = 0;
image_index = 0;

// Câmera
base_cam_w = 1366;
base_cam_h = 768;

// Zoom
min_zoom = 0.7;
max_zoom = 1.8;
zoom_lerp = 0.06;
current_zoom = 0.9;

// Distância
previous_x = phy_position_x;
previous_y = phy_position_y;
distance_traveled = 0;

/* 🟡 INICIALIZAÇÃO DAS VARIÁVEIS PARA CONTAR DISTÂNCIA
distance_traveled = 0;          // Distância total percorrida
previous_x = phy_position_x;    // Posição X anterior
previous_y = phy_position_y;    // Posição Y anterior
frame_counter = 0;              // Contador de frames para controle
// 🟡 ESCALA DE DISTÂNCIA (Ajuste conforme desejado)
/ Quanto maior, mais lento a distância sobe
*/