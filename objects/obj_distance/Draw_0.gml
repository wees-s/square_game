// Define a cor do texto para preto e a fonte padrão
draw_set_color(c_black);
draw_set_font(fnt_default);

// Desenha "ESCORE" no topo da tela
draw_text(cam_x + 20, cam_y + 20, "ESCORE");

// Define a cor dos números para vermelho e a fonte numérica
draw_set_color(#ED008C);
draw_set_font(fnt_numbers);

// Desenha a distância percorrida na tela
draw_text(cam_x + 20, cam_y + 55, string(floor(distance_traveled)));



draw_set_color(c_black);
draw_set_font(fnt_lower);

// Desenha "ESCORE" no topo da tela
draw_text(cam_x + 1100, cam_y + 20, "max stopped time = 3");
draw_text(cam_x + 1227, cam_y + 40, string(floor(tempo_inativo)));