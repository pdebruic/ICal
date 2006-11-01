testing
testOccurences
	| event |
	
	event := (ICEvent summary: 'Test event')
		start: (self dateAndTimeClass year: 2006 month: 10 day: 1 hour: 19 minute: 0 second: 0);
		end: (self timeClass hour: 21 minute: 0 second: 0);
		location: 'Festgeminde';
		addRecurrenceRule: (ICRecurrenceRule monthly
			addWeekday: 'FR' occurrence:1; until: (self dateClass year: 2006 month: 12 day: 28); yourself);
		yourself.
		
	self assert: (event occurrences = (OrderedCollection new add: (self dateClass year: 2006 month: 10 day: 6);
		add: (self dateClass year: 2006 month: 11 day: 3); add: (self dateClass year: 2006 month: 12 day: 1); yourself)).
		
	event := (ICEvent summary: 'Test event')
		start: (self dateAndTimeClass year: 2006 month: 10 day: 18 hour: 19 minute: 0 second: 0);
		end: (self timeClass hour: 21 minute: 0 second: 0);
		location: 'Festgeminde';
		addRecurrenceRule: (ICRecurrenceRule monthly
			addWeekday: 'FR' occurrence:1; count: 4; yourself);
		yourself.
		
	self assert: (event occurrences = (OrderedCollection new
		add: (self dateClass year: 2006 month: 11 day: 3); add: (self dateClass year: 2006 month: 12 day: 1); 
		add: (self dateClass year: 2007 month: 1 day: 5); add: (self dateClass year: 2007 month: 2 day: 2); yourself)).
	
	event := (ICEvent summary: 'Test event')
		start: (self dateAndTimeClass year: 2006 month: 10 day: 1 hour: 19 minute: 0 second: 0);
		end: (self timeClass hour: 21 minute: 0 second: 0);
		location: 'Festgeminde';
		addRecurrenceRule: (ICRecurrenceRule monthly
			addWeekday: 'FR' occurrence:1; interval: 2; count: 2; yourself);
		yourself.
		
	self assert: (event occurrences = (OrderedCollection new add: (self dateClass year: 2006 month: 10 day: 6);
		add: (self dateClass year: 2006 month: 12 day: 1); yourself)).