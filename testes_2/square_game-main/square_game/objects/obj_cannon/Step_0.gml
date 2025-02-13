// Controle de rotação do canhão
var rotation_speed = 2; // Velocidade da rotação

// Girar para cima
if (keyboard_check(ord("W")) || keyboard_check(vk_up)) {
    image_angle -= rotation_speed;
}

// Girar para baixo
if (keyboard_check(ord("S")) || keyboard_check(vk_down)) {
    image_angle += rotation_speed;
}

// Limitar o ângulo (opcional, se não quiser giro completo)
image_angle = clamp(image_angle, -45, 45); // Limita entre -45° e 45°

// Se pressionar ESPAÇO, lança o quadrado
if (keyboard_check_pressed(vk_space)) {
    var angle_rad = image_angle * pi / 180;

    // Ponto fixo dentro do objeto de onde sairá o disparo
    var local_x = 0; // Distância horizontal da origem do sprite
    var local_y = 0;  // Distância vertical da origem do sprite (se precisar ajustar)

    // Converter para coordenadas globais levando em conta a rotação
    var spawn_x = x + lengthdir_x(local_x, image_angle) - lengthdir_y(local_y, image_angle);
    var spawn_y = y + lengthdir_y(local_x, image_angle) + lengthdir_x(local_y, image_angle);

    // Criar o quadrado na posição exata dentro do objeto disparador
    var square = instance_create_layer(spawn_x, spawn_y, layer, obj_square);
    
    // Aplicar velocidade baseada no ângulo do disparo
    var launch_speed = 8;
    square.hspeed = launch_speed * cos(angle_rad);
    square.vspeed = -launch_speed * sin(angle_rad);
}
