
/// @desc Returns a struct of choices for a given NPC
function scr_make_choice(_npc)
{
    switch (_npc)
    {
        case "crazygirl":
            return {
			    "1": "Are you drunk?",
			    "2": "What are you talking about?",
			    "3": "Leave"

            };
    }

    return {}; // default if unknown npc
}