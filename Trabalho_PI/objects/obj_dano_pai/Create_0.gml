// Variável para guardar a referência de quem me criou (o jogador)
meu_criador = noone;

// Faz o objeto se destruir rapidamente (ex: após 0.1 segundos)
// Assim, a "foto" é um evento instantâneo e não fica na tela.
alarm[0] = room_speed * 0.1;