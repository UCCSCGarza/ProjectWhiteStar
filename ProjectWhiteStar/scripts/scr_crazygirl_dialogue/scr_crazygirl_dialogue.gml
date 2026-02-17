function scr_crazygirl_dialogue(_id)
{
    dialogue = new Dialogue();

    switch (_id)
    {
        case 0:
            dialogue.add(spr_crazy_girl, "Heh... heh... you hear it too, don't you?\nThe hull hums different.");
        break;

       // FIRST MEETING
    case 1:
        dialogue.add(spr_crazy_girl,
        "Drunk? Am I drunk. AM I DRUNK!!!!\nYes. A little bit.\nThat's the only way to board a ghost ship.");
    break;

    case 2:
        dialogue.add(spr_crazy_girl,
        "They painted her name.\nBut they didn't change her bones.\nSteel remembers.");
    break;


    // GIVE BOTTLE START
    case 10:
        dialogue.add(spr_crazy_girl,
        "Alright.\nYou want truth?\nSit down.\nShips have bones.\nAnd bones don't lie.");
    break;


    // TRUTH PATH RESPONSES
    case 12:
        dialogue.add(spr_crazy_girl,
        "Rivets. Plates. Frame numbers.\nThey stamp everything.\nEven when they repaint a name,\nthe numbers stay underneath.");
    break;

    case 13:
        dialogue.add(spr_crazy_girl,
        "This ship?\nShe has the same scar.\nSame groan in the hull at night.\nI'd know it anywhere.");
    break;

    case 14:
        dialogue.add(spr_crazy_girl,
        "Go down to the boiler room.\nFind the serial plates near the bulkhead.\nTitanic's numbers should start with 401.\nYou tell me if they match.");

        // 🔥 AUTO FINAL LINE
        dialogue.add(spr_crazy_girl,
        "They think I'm mad.\nThat's fine.\nMadmen don't get thrown overboard.\nPeople with proof do.");
		global.jimmy_state = 3;
    break;

    }
}