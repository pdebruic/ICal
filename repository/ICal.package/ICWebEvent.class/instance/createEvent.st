as yet unclassified
createEvent
	| category appointment1 |
	category := ICCategory summary: 'friends'.
	appointment1 := ICEvent new.
	appointment1 addCategory: category.
	appointment1 uid: 'app1'.
	appointment1 start: DateAndTime now;
		 end: DateAndTime now + 1 hour.
	appointment1 beLowPriority; location: ''; status: ''; summary: 'New Event'; location: 'Somewhere'.
	event := appointment1