
function scr_apply_choice(_choice)
{
    selected_choice = _choice;

    switch (npc_name)
    {
        case "crazygirl":
            if (_choice == 1) current_text = scr_crazygirl_dialogue(1);
            else if (_choice == 2) current_text = scr_crazygirl_dialogue(2);
            else if (_choice == 3)
            {
                // end conversation
                active = false;
				showing_dialogue = false;
                dialogue = new Dialogue();
            }
        break;
    }
}
