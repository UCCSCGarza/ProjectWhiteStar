
/// @desc Returns a struct of choices for a given NPC
function scr_make_choice(_npc)
{
    switch (_npc)
    {
     case "crazygirl":

    switch (global.jimmy_state)
    {
        case 0:
            return {
                "1": "Are you drunk?",
                "2": "What are you talking about?",
                "3": "Leave"
            };

        case 1:
            return {
                "1": "Give bottle",
                "2": "Ask Question"
				
            };

        case 2:
            return {
                "1": "What do you mean?",
                "2": "You said this isn't Titanic.",
                "3": "Tell me what's wrong with this ship,"
				
            };
			case 3:
			return { "1" : "Leave" };
    }

	case "plate":
    return { "1":"Leave" };

case "jenny":

    if (global.jenny_state == 0)
    {
        return {
            "1": "I want to speak with you.",
            "2": "Leave"
        };
    }
    else
    {
        return {
            "1": "Leave"
        };
    }


case "engineer":

    // Special second meeting unlock
    if (global.found_serial && global.has_captain_key && !global.has_schematic)
    {
        return {
            "1": "Show what I found",
            "2": "Leave"
        };
    }

    // First meeting (if journal not received yet)
    if (!global.engineer_met)
    {
        return {
            "1": "...",
            "2": "Leave"
        };
    }

    // Normal after meeting
    return { "1": "Leave" };



case "captain":

    if (!(global.has_captain_key && global.has_schematic && global.found_serial))
    {
        return { "1": "Leave" };
    }

    if (global.captain_state == 0)
    {
        return { "1": "Show schematic", "2": "Leave" };
    }
    else
    {
        return { "1": "Expose them", "2": "Stay silent" };
    }



			case "Rich":

    if (!global.rich_met)
    {
        return {
            "1": "Ask about ship",
            "2": "Ask about business",
            "3": "Leave"
        };
    }
    else
    {
        return {
            "1": "...",
            "2": "Leave",
            "3": ""
        };
    }

	
}



}


