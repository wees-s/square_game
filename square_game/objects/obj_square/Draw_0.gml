draw_sprite(spr_square, 0, x, y);

// Define a posição da pontuação (acompanha a câmera)
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

// Desenha a pontuação no canto superior esquerdo da tela
draw_set_font(fnt_score); // Define a fonte (substitua "fnt_score" pelo nome da sua fonte)
draw_set_color(c_black); // Define a cor do texto
draw_text(cam_x + 40, cam_y + 40, "Your Fucking Square Score");
draw_set_font(fnt_points);
draw_text(cam_x + 40, cam_y + 70, + string(score));