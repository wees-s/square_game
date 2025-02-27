// 🟡 1. DESENHA O OBJETO (SPRITE PADRÃO)
sprite_index = spr_square_1;
draw_self();


// 🟡 2. EXIBE A DISTÂNCIA NA TELA
// A distância já está em metros devido à física
var distance_in_meters = distance_traveled;

// Obtém a posição da câmera corretamente
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

// Desenha a distância total na tela
draw_set_color(c_black);
draw_set_font(fnt_default);
draw_text(cam_x + 20, cam_y + 20, "ESCORE: ");
draw_set_color(#ED008C);
draw_set_font(fnt_numbers);
draw_text(cam_x + 20, cam_y + 55, string(floor(distance_in_meters)));


// 🟡 3. DESENHA RASTRO (OPCIONAL, DESCOMENTE SE QUISER)
// if (surface_exists(surface)) {
//     draw_surface(surface, 0, 0);
// }
