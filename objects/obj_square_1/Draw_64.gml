// velocidade real
var velocidade_atual = point_distance(0, 0, phy_speed_x, phy_speed_y);
velocidade_suave = lerp(velocidade_suave, velocidade_atual, 0.15);

// valor exibido
var vel = round(velocidade_suave * 10);

// ---- SHAKE ----
var shake_intensidade = clamp(velocidade_suave * 0.15, 0, 20);
var shake_x = random_range(-shake_intensidade, shake_intensidade);
var shake_y = random_range(-shake_intensidade, shake_intensidade);

// ---- SCALE DA FONTE ----
// escala base + crescimento pela velocidade
var scale = clamp(1 + velocidade_suave * 0.03, 1, 2.2);

// ---- HUD ----
draw_set_font(fnt_numbers);
draw_set_color(#ED008C);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// número
draw_text_transformed(
    1200 + shake_x,
    32 + shake_y,
    string(vel),
    scale,
    scale,
    0
);

// unidade
draw_set_font(fnt_lower);
draw_set_color(c_black);
draw_text_transformed(
    1200 + shake_x,
    60 + shake_y,
    "km/h",
    scale * 0.8,
    scale * 0.8,
    0
);
