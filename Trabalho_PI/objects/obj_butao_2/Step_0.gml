//Impede de interagir com um objeto já interagido
if (interagivel == false){
	sprite_index = spr_botao_ativado_2;
	ativado = 1 ;
	exit;
}

// Verifica se ainda não há um alvo definido
if (alvo == noone) {
    
    // Percorre todas as instâncias do objeto obj_Door
    for (var cnt = 0; cnt < instance_number(obj_porta_2); cnt++) {
        
        // Pega a instância de número 'cnt' do objeto obj_Door
        var instance = instance_find(obj_porta_2, cnt);

        // Verifica se o nome dessa instância é igual ao nome da porta que queremos abrir
        if (instance.nome == porta_abrir) {
            
            // Define essa instância como o alvo
            alvo = instance;
            
            // Para o laço, pois já encontramos a porta desejada
            break;
        }
    }
}