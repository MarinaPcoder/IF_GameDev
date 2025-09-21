// Evento Room Start

// Pega o ID da sala que acabou de começar
var _sala_atual = room; 

// Procura no nosso mapa de informações quantos documentos esta sala tem
if (ds_map_exists(info_fases, _sala_atual))
{
    // Encontrou! Atualiza a variável com o total da fase atual
    documentos_totais_na_fase = info_fases[? _sala_atual];
}
else
{
    // Se a sala não estiver no mapa, define como 0 para evitar erros.
    documentos_totais_na_fase = 0;
    show_debug_message("AVISO: A sala " + room_get_name(_sala_atual) + " não está configurada no controlador!");
}

// ACHA O JOGADOR E RESETAR SUA CONTAGEM
if (instance_exists(obj_jogador))
{
    obj_jogador.documentos_fotografados_nesta_fase = 0;
}

show_debug_message("Iniciando " + room_get_name(_sala_atual) + ". Documentos necessários: " + string(documentos_totais_na_fase));