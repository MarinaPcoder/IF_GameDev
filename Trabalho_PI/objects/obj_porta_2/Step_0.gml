	
estado_fechada.roda = function()
{

	
	
	if(nome == porta_abrir)
	{	
		if(obj_butao_2.ativado == 1)
		{
			troca_estado(estado_abrindo);
		
		}
	}
}


estado_abrindo.inicia = function()
{
	sprite_index = spr_porta_ativada
	image_index = 0
}

estado_abrindo.roda = function()
{
	if(image_index >= image_number - 0.2)
	{
		troca_estado(estado_aberta);
	}
}

estado_aberta.inicia = function()
{
	sprite_index = spr_porta_aberta
	image_index = 0;
	
}

roda_estado();

