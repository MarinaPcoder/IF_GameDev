// Inherit the parent event
event_inherited();



tempo_estado = game_get_speed(gamespeed_fps) * 10;
timer_estado = tempo_estado;
timer_andar = 0;
postox = 0;
postoy = 0;


estado_idle.inicia = function()
{
sprite_index = spr_inimigo_chase_idle;
image_index = 0;
}

estado_idle.roda = function()
{
timer_estado --;
	if(timer_estado <= 0)
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
timer_andar = 200;

//fazendo a patrulha
postox = irandom(room_width);
postoy = irandom(room_height);
}

estado_walk.roda = function()
{
	
timer_andar --;
mp_linear_step(postox, postoy, 1, obj_colisor);
	if(timer_andar <= 0)
	{
		troca_estado(estado_idle);
	}
	
	

	
}

#endregion

#region Chase

#endregion

