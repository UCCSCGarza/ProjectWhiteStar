
function scr_start_convo(_npc)
{
	
	show_debug_message(variable_struct_get(choices, "1"));
	
    active = true;
    npc_name = _npc;
    stage = 0;
    selected_choice = 1;

	choices = scr_make_choice(_npc);
	
	if (npc_name == "crazygirl")
{
    if (!global.has_bottle)
    {
        scr_crazygirl_dialogue(0); // first meeting
    }
    else if (!global.jimmy_trust)
    {
        scr_crazygirl_dialogue(10); // second meeting intro
    }

    stage = 0;
    showing_dialogue = false;
    alpha = 0;
}

if (npc_name == "engineer")
{
    scr_engineer_dialogue(0);
    stage = 0;
    showing_dialogue = false;
    alpha = 0;
}


if (npc_name == "captain")
{
    scr_captain_dialogue(0);
    stage = 0;
    showing_dialogue = false;
    alpha = 0;
}



if (npc_name == "jenny")
{
    scr_jenny_dialogue(0);
    stage = 0;
    showing_dialogue = false;
    alpha = 0;
}


    

    // show intro line immediately
   if (npc_name == "Rich") 
{
    if (!global.rich_met)
    {
        scr_rich_dialogue(0); // First meeting
    }
    else
    {
        scr_rich_dialogue(10); // Second meeting intro
    }

    stage = 0;
    showing_dialogue = false;
    alpha = 0;
}

}

