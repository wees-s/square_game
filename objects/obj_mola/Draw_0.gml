// Define a posição do botão relativamente à câmera
var cam_x = camera_get_view_x(view_camera[0]); // Posição X da câmera
var cam_y = camera_get_view_y(view_camera[0]); // Posição Y da câmera

// Define a posição do botão na tela (exemplo: 20 pixels da borda direita e 20 pixels do topo)
var button_x = cam_x + camera_get_view_width(view_camera[0]) - 683 - sprite_width / 2;
var button_y = cam_y + 40 + sprite_height / 2;

// Desenha o botão na posição calculada
draw_sprite(sprite_index, image_index, button_x, button_y);