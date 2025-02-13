// O canhão vai definir a velocidade ao criar o quadrado, então removemos hspeed/vspeed aqui
// Mantemos a gravidade para que o quadrado caia naturalmente
gravity = 0.1;
gravity_direction = 270; // Direção para baixo
friction = 0.02;


// Variáveis de distância e pontuação
distance_traveled = 0; // Distância percorrida
score = 0; // Pontuação
score_increment = 1; // Quantidade de pontos por unidade de distância