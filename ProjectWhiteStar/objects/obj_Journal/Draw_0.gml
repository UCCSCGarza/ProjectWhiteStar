draw_self()
var counter = 0;
var x1 = 350;
var y1 = 75;
draw_set_color(c_black);

function draw_journal_text(text_draw, boolean_check, x1, y1, counter){
	var y_text = y1 + (25 * counter);
	
	draw_text(x1, y_text, text_draw)

	var text_width = string_width(text_draw);
	var text_height = string_height(text_draw);

	if(boolean_check)
		draw_line(x1, y_text + text_height * 0.5, x1 + text_width, y_text + text_height * 0.5);
		
	counter = counter + 1;
	return counter;
}

counter = draw_journal_text("Talk to your boss", global.has_journal, x1, y1, counter)
counter = draw_journal_text("Earn Jimmy's Trust", global.rich_met, x1, y1, counter)
counter = draw_journal_text("Meet Rich", global.rich_met, x1, y1, counter)
counter = draw_journal_text("Obtain Bottle", global.rich_met, x1, y1, counter)
counter = draw_journal_text("Obtain the serial number", global.found_serial, x1, y1, counter)
counter = draw_journal_text("Obtain the key", global.rich_met, x1, y1, counter)
counter = draw_journal_text("Obtain the schematic", global.has_schematic, x1, y1, counter)