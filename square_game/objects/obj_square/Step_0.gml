if (y > room_height) {
    y = room_height; // Coloca o quadrado na borda inferior
    vspeed = -vspeed * 0.3; // Inverte a velocidade vertical e reduz um pouco (efeito de quique)
}

// Define a posição da câmera para seguir o quadrado
var cam_x = x - camera_get_view_width(view_camera[0]) / 2;
var cam_y = y - camera_get_view_height(view_camera[0]) / 2;



// Limita a câmera para não sair das bordas da sala
cam_x = clamp(cam_x, 0, room_width - camera_get_view_width(view_camera[0]));
cam_y = clamp(cam_y, 0, room_height - camera_get_view_height(view_camera[0]));

// Move a câmera para a posição calculada
camera_set_view_pos(view_camera[0], cam_x, cam_y);

// Calcula a distância percorrida na direção X
distance_traveled += abs(hspeed);

// Atualiza a pontuação com base na distância percorrida
score = floor(distance_traveled * score_increment);