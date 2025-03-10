draw_self();
draw_set_color(c_black);
draw_set_font(fnt_numbers);
draw_text(20,130, "YOUR RECORD:")

// Define a cor e a fonte
draw_set_color(c_black);
draw_set_font(fnt_numbers);

// Exibe o recorde na tela
draw_text(20, 155, string(floor(global.recorde)));
