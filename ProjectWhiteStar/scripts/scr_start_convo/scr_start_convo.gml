
function scr_start_convo(_npc)
{
	
	show_debug_message(variable_struct_get(choices, "1"));
	
    active = true;
    npc_name = _npc;
    stage = 0;
    selected_choice = 1;

	choices = scr_make_choice(_npc);

    

    // show intro line immediately
    if (npc_name == "crazygirl") {
		
        scr_crazygirl_dialogue(0);
		
		stage = 0;
		showing_dialogue = false;
		alpha = 0;
	}
}

