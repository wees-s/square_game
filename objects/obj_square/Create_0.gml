cam_offset_x = 0;
cam_shake_x  = 0;
cam_shake_y  = 0;
cam_x        = x;
cam_y        = y;
current_zoom = 1;
cam_speed_offset = 0;

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


velocidade_suave = 0;


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


// 🎵 Toca o som de disparo
audio_play_sound(snd_abstract, 0, true);

// 🟡 VELOCIDADE DE DISPARO COM BASE NO ÂNGULO
var angle = obj_seta.image_angle; // Pega o ângulo da seta
var Speed = power(9, 3);        // Velocidade do disparo

// Converte o ângulo em vetores X e Y
var vel_x = lengthdir_x(Speed, angle);
var vel_y = lengthdir_y(Speed, angle);

// 💥 Aplica velocidade usando física
phy_linear_velocity_x = vel_x;
phy_linear_velocity_y = vel_y;
phy_angular_velocity = random_range(-60, 60);

// 🟡 INICIALIZAÇÃO DAS VARIÁVEIS PARA CONTAR DISTÂNCIA
//distance_traveled = 0;          // Distância total percorrida
//previous_x = phy_position_x;    // Posição X anterior
//previous_y = phy_position_y;    // Posição Y anterior
//frame_counter = 0;              // Contador de frames para controle
// 🟡 ESCALA DE DISTÂNCIA (Ajuste conforme desejado)
// Quanto maior, mais lento a distância sobe
