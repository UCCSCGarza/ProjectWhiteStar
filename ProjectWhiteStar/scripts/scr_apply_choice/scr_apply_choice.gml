
function scr_apply_choice(_choice)
{
    selected_choice = _choice;

    switch (npc_name)
    {case "crazygirl":

    switch (global.jimmy_state)
    {
        // FIRST MEETING
        case 0:
            if (_choice == 1) scr_crazygirl_dialogue(1);
            if (_choice == 2) scr_crazygirl_dialogue(2);
            if (_choice == 3) active = false;
        break;

        // GIVE BOTTLE
        case 1:
            if (_choice == 1)
            {
                scr_crazygirl_dialogue(10); // truth intro
                global.jimmy_state = 2;     // unlock truth
            }
            if (_choice == 2)
            {
                active = false;
            }
        break;

        // TRUTH PATH
        case 2:
            if (_choice == 1) scr_crazygirl_dialogue(12);
            if (_choice == 2) scr_crazygirl_dialogue(13);
            if (_choice == 3) scr_crazygirl_dialogue(14);
			   if (_choice == 4) active = false;
        break;
		
		case 3:
		active = false;
    }

break;



case "plate":
    active = false;
break;


case "jenny":

    if (global.jenny_state == 0)
    {
        if (_choice == 1)
        {
            scr_jenny_dialogue(1);
        }
        else if (_choice == 2)
        {
            active = false;
        }
    }
    else
    {
        active = false;
    }

break;

case "engineer":

    // Second meeting (gated)
    if (global.found_serial && global.has_captain_key && !global.has_schematic)
    {
        if (_choice == 1)
        {
            scr_engineer_dialogue(10); // second meeting convo, gives schematic
        }
        else if (_choice == 2)
        {
            active = false;
        }
    }

    // First meeting
    else if (!global.engineer_met)
    {
        if (_choice == 1) scr_engineer_dialogue(1);
        else if (_choice == 2) active = false;
    }

    // Otherwise
    else
    {
        active = false;
    }

break;


case "captain":

    // If missing requirements, just boot them out
    if (!(global.has_captain_key && global.has_schematic && global.found_serial))
    {
        active = false;
        break;
    }

    // Before confession
    if (global.captain_state == 0)
    {
        if (_choice == 1) scr_captain_dialogue(1); // show schematic -> confession
        else if (_choice == 2) active = false;
    }
    // After confession -> choose ending
    else
    {
        if (_choice == 1)
        {
            // EXPOSE -> WIN
            active = false;
            global.conversation = false;
            global.captain_state = 0; // optional reset
            load_area("win");
        }
        else if (_choice == 2)
        {
            // STAY SILENT -> LOSE
            active = false;
            global.conversation = false;
            global.captain_state = 0; // optional reset
            load_area("lose");
        }
    }

break;



	
		case "Rich":

    if (!global.rich_met)
    {
        if (_choice == 1) scr_rich_dialogue(1);
        if (_choice == 2) scr_rich_dialogue(2);
        if (_choice == 3)
        {
            global.rich_met = true; // IMPORTANT
            active = false;
        }
    }
    else
    {
        if (_choice == 1) scr_rich_dialogue(11);
        if (_choice == 2)
        {
            active = false;
        }
    }

break;



	}
}




