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

    // Definir a distância da boca do canhão a partir da roda
    var cannon_length = 50; // Ajuste esse valor se necessário

    // Ajustar a posição do spawn baseado na rotação do canhão
    var spawn_x = x + lengthdir_x(cannon_length, image_angle);
    var spawn_y = y + lengthdir_y(cannon_length, image_angle);

    // Criar o quadrado na posição correta
    var square = instance_create_layer(spawn_x, spawn_y, layer, obj_square);
    
    // Aplicar velocidade baseada no ângulo do canhão
    var launch_speed = 12;
    square.hspeed = launch_speed * cos(angle_rad);
    square.vspeed = -launch_speed * sin(angle_rad);
}
