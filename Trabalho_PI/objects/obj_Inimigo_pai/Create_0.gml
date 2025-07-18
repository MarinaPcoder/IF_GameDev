estado_idle = new estado();
estado_stun = new estado();
estado_atual = estado_idle;
estado_atual.inicia();


stun_timer = 0;

estado_idle.inicia = function()
{
sprite_index = spr_inimigo_idle;
image_index = 0;
}

estado_idle.roda = function()
{
	
}

estado_stun.inicia = function()
{
sprite_index = spr_inimigo_stun;
image_index = 0
stun_timer = 300;
}

estado_stun.roda = function()
{
	if(stun_timer = 0)
	{
		troca_estado(estado_idle)
	}
}