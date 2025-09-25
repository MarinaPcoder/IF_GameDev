// Evento de Colisão com obj_jogador

// Primeiro, verificamos por segurança se o controlador existe.
if (!instance_exists(obj_controlador_fase))
{
    show_debug_message("ERRO CRÍTICO: obj_controlador_fase não encontrado!");
    exit; // Para o código para evitar mais erros.
}

// Pega o total de documentos necessários diretamente do controlador
var _total_necessario = obj_controlador_fase.documentos_totais_na_fase;

// Pega quantos o jogador fotografou (a variável 'other' se refere ao obj_jogador)
var _total_do_jogador = other.documentos_fotografados_nesta_fase;


// Compara os dois valores
if (_total_do_jogador >= _total_necessario)
{
    // SUCESSO! O jogador pode avançar.
    show_debug_message("Fase completa! Indo para a próxima.");
    room_goto(destino);
	
	other.x_res = pos_x;
	other.y_res = pos_y;
	other.x = pos_x;
	other.y = pos_y;
}
else
{
    // AINDA NÃO! Mostra quantos faltam.
    var _faltam = _total_necessario - _total_do_jogador;
    show_debug_message("Ainda faltam " + string(_faltam) + " documentos para fotografar!");
    // Aqui você pode tocar um som de "bloqueado" ou mostrar uma mensagem na tela.
}