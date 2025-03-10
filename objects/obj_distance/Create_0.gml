// Inicializa a variável de distância
distance_traveled = 0; 

// Guarda a posição inicial para cálculo
posicao_anterior_x = x;

// Obtém a posição da câmera
cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]);

///////////////////////////////////////////////////////////////////////////

tempo_inativo = 0; // Contador de inatividade
tempo_limite = 0; // Ainda não inicializamos o limite aqui
ultima_distancia = distance_traveled; // Guarda a distância inicial