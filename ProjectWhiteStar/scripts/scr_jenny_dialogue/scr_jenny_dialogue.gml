function scr_jenny_dialogue(_id)
{
    dialogue = new Dialogue();

    switch (_id)
    {
        case 0:
            dialogue.add(spr_RichWife,
            "If you are looking for my husband,\nhe prefers rooms with applause.");
        break;

        case 1:
            dialogue.add(spr_RichWife,
            "About what?\nThe music?\nMy prick of a husband?\nOr the way this ship feels wrong?");

            dialogue.add(spr_RichWife,
            "You have noticed it.\nRich says I imagine things.\nThat I drink too much.");

            dialogue.add(spr_RichWife,
            "But before we left port,\nI overheard him arguing about valuations.\nAbout losses being 'recoverable.'");

            dialogue.add(spr_RichWife,
            "I married confidence.\nNot secrets.");

            dialogue.add(spr_RichWife,
            "If you are digging...\nBe careful.\nMen like Rich don't lose.\nThey rearrange outcomes.");

            dialogue.add(spr_RichWife,
            "He keeps a spare key.\nTo the captain's quarters.\nSays it's for 'private discussions.'");

            dialogue.add(spr_RichWife,
            "Take it.\nIf there is something rotten on this ship,\nI would rather know before the ocean does.");

            global.has_captain_key = true;
            global.jenny_state = 1;
        break;
    }
}
