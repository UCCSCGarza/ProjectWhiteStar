function scr_rich_dialogue(_id)
{
    dialogue = new Dialogue();

    switch(_id)
    {
        case 0:
            dialogue.add(spr_rich_diologue, 
            "If you are not here to admire the view,\ntry not to stain it.");
        break;

        case 1:
            dialogue.add(spr_rich_diologue,
            "Magnificent, isn't she?\nBuilt to be unsinkable.\nAnd yes... very, very insured.");
        break;

        case 2:
            dialogue.add(spr_rich_diologue,
            "Insurance.\nThe real miracle of modern engineering.\nShips sink.\nInvestments float.");
        break;

        case 10:
            dialogue.add(spr_rich_diologue,
            "You again? What now?");
        break;

        case 11:
            dialogue.add(spr_rich_diologue,
            "Actually...\nIf you insist on being useful,\nTake this bottle to my wife.\nShe's sulking below.\nAnd try not to drink it yourself.");
            global.jimmy_state = 1;
        break;
    }
}
