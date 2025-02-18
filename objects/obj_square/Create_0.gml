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
distance_traveled = 0;          // Distância total percorrida
previous_x = phy_position_x;    // Posição X anterior
previous_y = phy_position_y;    // Posição Y anterior
frame_counter = 0;              // Contador de frames para controle
// 🟡 ESCALA DE DISTÂNCIA (Ajuste conforme desejado)
// Quanto maior, mais lento a distância sobe

