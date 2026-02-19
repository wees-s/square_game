// Atualiza a posição para o centro da câmera
cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]);

// Mantém o objeto sempre no centro da câmera
x = cam_x + camera_get_view_width(view_camera[0]) / 2;
y = cam_y + camera_get_view_height(view_camera[0]) / 2;

// Calcula a distância percorrida
var deslocamento = abs(x - posicao_anterior_x);
distance_traveled += deslocamento;

// Atualiza a posição anterior
posicao_anterior_x = x;

////////////////////////////////////////////////////////////


// Se obj_seta ainda existir, não faz nada
if (instance_exists(obj_seta)) {
    tempo_inativo = 0; // Reseta o contador caso obj_seta ainda esteja na sala
    exit; // Sai do Step Event e não executa o resto do código
}

// Se obj_seta foi destruído, começa a contagem de inatividade
if (tempo_limite == 0) {
    tempo_limite = physics_world_update_speed * 0.002; // 3 segundos sem movimento
}

// Se a distância percorrida NÃO mudou, aumenta o contador
if (distance_traveled == ultima_distancia) {
    tempo_inativo += 0.006;
} else {
    tempo_inativo = 0; // Reseta o contador se a distância aumentar
}

// Atualiza a última distância verificada
ultima_distancia = distance_traveled;

//explosão
if (tempo_inativo > 2  && instance_exists(obj_explosion_button) && object_exists(obj_explosion_button))
{
	instance_destroy(obj_explosion_button);
	if (instance_exists(obj_square)) with (obj_square) {
		obj_square.phy_speed_y = -5;
		obj_square.phy_speed_x += 8;
		audio_play_sound(snd_explosion, 0,false);
	}
	if (instance_exists(obj_circle)) with (obj_circle) {
		obj_circle.phy_speed_y = -5;
		obj_circle.phy_speed_x += 8;
		audio_play_sound(snd_explosion, 0,false);
	}
	if (instance_exists(obj_square_1)) with (obj_square_1) {
		obj_square_1.phy_speed_y = -5;
		obj_square_1.phy_speed_x += 8;
		audio_play_sound(snd_explosion, 0,false);
	}
}

// Se atingir o tempo limite, reinicia o jogo completamente
if (tempo_inativo >= tempo_limite) {
    ini_open("recorde.ini");
	ini_write_real("Pontuacao", "Recorde", global.recorde);
	ini_close();

	// Agora reinicia o jogo do zero
	game_restart();

}

// Se a pontuação atual for maior que o recorde, atualiza o recorde
if (distance_traveled > global.recorde) {
    global.recorde = distance_traveled; // Salva a maior pontuação
}

if (!variable_global_exists("recorde")) {
    global.recorde = 0; // Define o valor inicial se não existir
}