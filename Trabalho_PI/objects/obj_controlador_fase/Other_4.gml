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

// Evento Room Start de obj_controle_sala

show_debug_message("Grid de Pathfinding sendo criada...");

var _cell_size = 16;
global.grid = mp_grid_create(0, 0, room_width / _cell_size, room_height / _cell_size, _cell_size, _cell_size);

// Adiciona todos os objetos 'obj_colisor' como paredes na grid.
mp_grid_add_instances(global.grid, obj_colisor, false);