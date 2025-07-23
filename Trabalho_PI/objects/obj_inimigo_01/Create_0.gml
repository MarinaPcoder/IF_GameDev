// Inherit the parent event
event_inherited();



tempo_estado = game_get_speed(gamespeed_fps) * 10;
timer_estado = tempo_estado;


estado_idle.inicia = function()
{
sprite_index = spr_inimigo_chase_idle;
image_index = 0;
}

estado_idle.roda = function()
{
tempo_estado --;
	if(tempo_estado <= 0)
		{
			troca_estado(estado_walk)
		}
}

estado_stun.inicia = function()
{
sprite_index = spr_inimigo_chase_stun;
image_index = 0
stun_timer = 300;

}


#region Walk

estado_walk.inicia = function()
{
sprite_index = spr_inimigo_chase_walk;
image_index = 0;

}

estado_walk.roda = function()
{

	
}

#endregion

#region Chase

#endregion

