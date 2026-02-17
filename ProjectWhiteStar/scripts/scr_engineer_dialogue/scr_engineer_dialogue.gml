function scr_engineer_dialogue(_id)
{
    dialogue = new Dialogue();

    var spr = spr_engineer_diologue; // <-- change to your engineer portrait sprite

    switch (_id)
    {
        case 0:
            dialogue.add(spr, "Hey kid.");
        break;

        case 1:
            dialogue.add(spr, "Keep your head down. People listen on ships like this.");
            dialogue.add(spr, "Take this journal. Write everything down.");
            dialogue.add(spr, "Start with Winnie down below. She notices what others ignore.");
            global.has_journal = true;
            global.engineer_met = true;
        break;

        case 10:
            dialogue.add(spr, "Back again?");
            dialogue.add(spr, "I told you, I've got work.\nBoilers don't run on gossip.");
            dialogue.add(spr, "...");
            dialogue.add(spr, "Those numbers...");
            dialogue.add(spr, "Titanic should read 401.\nIf yours doesn't...");
            dialogue.add(spr, "You didn't get this from me.");
            dialogue.add(spr, "If you're going to accuse a captain,\nyou better have something official.");
            dialogue.add(spr, "Here. A schematic.\nProof has to look like proof.");

            global.has_schematic = true;
        break;
    }
}
