function scr_captain_dialogue(_id)
{
    dialogue = new Dialogue();
	
	 var spr = spr_captain_diologue;

    switch (_id)
    {
        case 0:
            dialogue.add(-1, "You are not authorized to be in here.\nExplain yourself.");
        break;

        case 1:
            dialogue.add(-1, "Where did you get that?");
            dialogue.add(-1, "...");
            dialogue.add(-1, "You think you understand?");
            dialogue.add(-1, "White Star was bleeding money.");
            dialogue.add(-1, "Olympic was damaged beyond faith.");
            dialogue.add(-1, "Titanic was worth more sunk than sailing.");
            dialogue.add(-1, "Insurance is survival.");
            dialogue.add(-1, "One ship for another.\nHistory wouldn't know the difference.");
            dialogue.add(-1, "...");
            dialogue.add(-1, "And the passengers?");
            dialogue.add(-1, "...");
            // After confession, enable final choice
            global.captain_state = 1;
        break;
    }
}
