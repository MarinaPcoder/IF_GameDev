/// @parame text_id

function scr_game_text(_text_id){
	
	switch(_text_id)
	{
		
		case "npc 1":
			scr_text("Hi! I'm NPC 1!");
			scr_text("asdgafhgfj!");
			scr_text("Do you like video games?");
			scr_option("Yeah. I love video games!", "npc 1 - yes");
			scr_option("Nah", "npc 1 - no");
		break;
	
		case "npc 1 - yes":
			scr_text("asdgafhgfj!");
			break;

		case "npc 1 - no":
			scr_text("asdgafhgfj!!!!!!!!!");
			break;
		
		
	}

}