// Dimensões da tela GUI
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Exemplo: topo direito
var button_x = gui_w - 1245 - sprite_width / 2;
var button_y = 20 + sprite_height / 2;

// Escala (1 = tamanho original)
var scale = 0.55; // 60% do tamanho

draw_sprite_ext(
    sprite_index,
    image_index,
    button_x,
    button_y,
    scale,   // scale_x
    scale,   // scale_y
    0,       // rotação
    c_white, // cor
    1        // alpha
);
draw_set_color(c_black);
draw_set_font(fnt_lower);
draw_text(display_get_gui_width() - 1245, 50, "F1");
draw_text(display_get_gui_width() - 1256, 10, "SPEED");