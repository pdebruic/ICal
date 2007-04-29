testing
testDefaults
	
	self should: secondly defaultDay first = 15.
	self should: weekly defaultDay first = 'TH'.
	self should: secondly secondsOrDefault first = 0.
	self should: secondly minutesOrDefault first = 45.
	self should: secondly hoursOrDefault first = 8.
	self should: secondly monthsOrDefault first = 3.