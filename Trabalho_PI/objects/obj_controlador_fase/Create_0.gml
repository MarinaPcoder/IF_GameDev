// Evento Create

// Esta variável guardará o total de documentos para a fase ATUAL.
documentos_totais_na_fase = 0;

// Vamos usar um DS Map para guardar as informações de cada fase.
// É como um dicionário onde a chave é o nome da fase e o valor é o nº de documentos.
info_fases = ds_map_create();

// Agora, adicione as informações de cada fase que você tem.
// Use o NOME EXATO do seu asset de Room (ex: rm_floresta, rm_castelo).
ds_map_add(info_fases, SalaDeTeste, 3); // A fase "rm_fase_1" tem 3 documentos.

// Adicione uma linha para cada fase do seu jogo!

show_debug_message("Controlador de Fase criado com sucesso!");