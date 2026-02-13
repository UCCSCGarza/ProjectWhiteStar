function scr_crazygirl_dialogue(_id)
{
    dialogue = new Dialogue();

    switch (_id)
    {
        case 0:
            dialogue.add(spr_crazy_girl, "Heh... heh... you hear it too, don't you?\nThe hull hums different.");
        break;

        case 1:
            dialogue.add(spr_crazy_girl, "Drunk? Am I drunk. AM I DRUNK!!!!\nYes. A little bit.\nThat's the only way to board a ghost ship.");
        break;

        case 2:
            dialogue.add(spr_crazy_girl, "They painted her name.\nBut they didn't change her bones.\nSteel remembers.");
        break;

        case 3:
            // leave / end
        break;
    }
}