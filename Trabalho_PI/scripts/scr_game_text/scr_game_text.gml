/// @parame text_id

function scr_game_text(_text_id){
	
	switch(_text_id)
	{
		case "npc 1":
		scr_text("Here's the first line of text!");
		scr_text("AND MORE AND MORE AND MORE");
		scr_text("And here's a muuuuuuch looonger oooonnnne as the second...");
		scr_text("3!");
			scr_option("Yeah, I love video games!", "npc 1 - yes");
			scr_option("Nah", "npc 1 - no");
		break
	}

}