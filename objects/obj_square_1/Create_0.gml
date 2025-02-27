sprite_index = spr_square_1;
image_angle = 0;
image_xscale = 1;
image_yscale = 1;
image_speed = 0;
image_index = 0;

// 🟡 INICIALIZAÇÃO DAS VARIÁVEIS PARA CONTAR DISTÂNCIA
distance_traveled = 0;          // Distância total percorrida
previous_x = phy_position_x;    // Posição X anterior
previous_y = phy_position_y;    // Posição Y anterior
frame_counter = 0;              // Contador de frames para controle
// 🟡 ESCALA DE DISTÂNCIA (Ajuste conforme desejado)
// Quanto maior, mais lento a distância sobe
