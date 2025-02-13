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

// Se pressionar ESPAÇO, lança o quadrado
if (keyboard_check_pressed(vk_space)) {
    var angle_rad = image_angle * pi / 180;

    // Ponto fixo dentro do obj_disparo para disparo
    var local_x = 40;
    var local_y = 0;

    // Converter para coordenadas globais
    var spawn_x = x + lengthdir_x(local_x, image_angle) - lengthdir_y(local_y, image_angle);
    var spawn_y = y + lengthdir_y(local_x, image_angle) + lengthdir_x(local_y, image_angle);

    // Criar o quadrado na posição exata dentro do obj_disparo
    var square = instance_create_layer(spawn_x, spawn_y, layer, obj_square);

    // Criar a explosão exatamente onde o quadrado foi criado
    var explosion = instance_create_layer(spawn_x, spawn_y, layer, obj_explosion);
}
