// Dimensões da tela GUI
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Exemplo: canto superior direito
var button_x = gui_w - 1200 - sprite_width / 2;
var button_y = 40 + sprite_height / 2;

// Desenha o botão SEMPRE em primeiro plano
draw_sprite(sprite_index, image_index, button_x, button_y);
