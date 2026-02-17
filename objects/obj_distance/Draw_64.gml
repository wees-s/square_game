// ----------------------
// HUD EM SCREEN SPACE
// ----------------------

draw_set_color(c_black);
draw_set_font(fnt_default);

// Topo esquerdo
draw_text(20, 20, "ESCORE");

draw_set_color(#ED008C);
draw_set_font(fnt_numbers);
draw_text(20, 55, string(floor(distance_traveled)));

draw_set_color(c_black);
draw_set_font(fnt_lower);

// Topo direito (ajuste conforme resolução)
draw_text(display_get_gui_width() - 1345, 10, "Inative time:");
draw_text(display_get_gui_width() - 1272, 10, string(floor(tempo_inativo)));
