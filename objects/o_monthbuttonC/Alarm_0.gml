if month > global.calendarcurrentmonth {
locked = 1
}

/*if global.calendarcurrentyear < global.calendaryear {
if global.calendarcurrentyear > global.calendaryear { exit }
if global.calendarcurrentmonth - 4 < month {
locked = 1
}}*/

/*if month > 1 {
locked = 1
}*/

switch(month) {
default: text = "January" break;
case(2): text = "February"
xscale = 0.73
yscale = 0.73
break;
case(3): text = "March" break;
case(4): text = "April" break;
case(5): text = "May" break;
case(6): text = "June" break;
case(7): text = "July" break
case(8): text = "August" break;
case(9): text = "September"
xscale = 0.63
yscale = 0.63
break;
case(10): text = "October"
xscale = 0.75
yscale = 0.75
break;
case(11): text = "November"
xscale = 0.65
yscale = 0.65
break;
case(12): text = "December"
xscale = 0.65
yscale = 0.65
break;
}