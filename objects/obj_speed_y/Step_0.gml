// Define a posição do botão relativamente à câmera
var cam_x = camera_get_view_x(view_camera[0]); // Posição X da câmera
var cam_y = camera_get_view_y(view_camera[0]); // Posição Y da câmera

// Define a posição do botão na tela (mesma lógica do evento Draw)
var button_x = cam_x + camera_get_view_width(view_camera[0]) - 20 - sprite_width / 2;
var button_y = cam_y + 20 + sprite_height / 2;

// Atualiza a posição do botão para a lógica de colisão
x = button_x;
y = button_y;