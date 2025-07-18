estado_idle = new estado();
estado_stun = new estado();
estado_atual = estado_idle;
estado_atual.inicia();


stun_timer = 0;


estado_stun.inicia = function()
{

}

estado_stun.roda = function()
{
	if(stun_timer = 0)
	{
		troca_estado(estado_idle)
	}
}