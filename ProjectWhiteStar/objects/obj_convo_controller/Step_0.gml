if (!showing_dialogue)
{
    if (dialogue.count() > 0)
    {
        current_dialogue = dialogue.pop();
        showing_dialogue = true;
    }
    else
    {
        // No dialogue left — show choices or end
        if (active)
        {
            stage = 1; // show choices
        }
        else
        {
            instance_destroy();
        }
    }
}
else
{
    if (keyboard_check_released(key_next))
    {
        showing_dialogue = false;
        alpha = 0;
    }
}

if (active)
{
    // If we're not currently showing a dialogue box
    if (!showing_dialogue)
    {
        // When dialogue queue is empty, move to choices
        if (dialogue.count() <= 0)
        {
            stage = 1;
        }
    }

    // If choices are showing
    if (stage == 1)
    {
        if (keyboard_check_pressed(vk_up))   selected_choice = max(1, selected_choice - 1);
        if (keyboard_check_pressed(vk_down)) selected_choice = min(3, selected_choice + 1);

        // confirm
        if (keyboard_check_pressed(vk_enter))
        {
            // apply the choice
            scr_apply_choice(selected_choice);

            // after applying, if convo still active, show response dialogue
            if (active)
            {
                stage = 2;
                showing_dialogue = false; // pop the new response line
                alpha = 0;
            }
        }
    }
}