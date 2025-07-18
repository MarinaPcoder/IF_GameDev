// Inherit the parent event
event_inherited();
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

